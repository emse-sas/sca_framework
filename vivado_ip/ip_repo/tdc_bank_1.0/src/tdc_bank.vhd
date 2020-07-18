-------------------------------------------------------
--! @author Sami Dahoux (s.dahoux@emse.fr)
--! @file tdc_bank.vhd
--! @brief Assembly of multiple TDC
-------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tdc_bank is
    generic (
        coarse_len_g : positive;
        fine_len_g : positive;
        sampling_len_g : positive;
        count_tdc_g : positive
      ) ;
    port (
        clock_i : in std_logic;
        delta_i : in std_logic;
        coarse_delay_i : in std_logic_vector(2 * count_tdc_g - 1 downto 0);
        fine_delay_i : in std_logic_vector(4 * count_tdc_g - 1 downto 0);
        delta_o : out std_logic_vector(count_tdc_g - 1 downto 0);
        data_o : out std_logic_vector(8 * count_tdc_g - 1 downto 0)
  );
    attribute dont_touch : string;
    attribute dont_touch of tdc_bank: entity is "true";
end tdc_bank;

architecture tdc_bank_arch of tdc_bank is

    signal data_s : std_logic_vector(4 * sampling_len_g * count_tdc_g - 1 downto 0); 

    component tdc
    generic (
        coarse_len_g : positive;
        fine_len_g : positive;
        sampling_len_g : positive
      ) ;
    port (
        clock_i : in std_logic;
        delta_i : in std_logic;
        coarse_delay_i : in std_logic_vector(1 downto 0);
        fine_delay_i : in std_logic_vector(3 downto 0);
        delta_o : out std_logic;
        data_o : out std_logic_vector(4 * sampling_len_g - 1 downto 0)
    );
    end component;

begin
    -- data_o <= data_s;
    bank : for i in 0 to count_tdc_g - 1 generate
    
    sensors: tdc
        generic map (
            coarse_len_g => coarse_len_g,
            fine_len_g => fine_len_g,
            sampling_len_g => sampling_len_g
        )
        port map (
            clock_i => clock_i,
            delta_i => delta_i,
            delta_o => delta_o(i),
            coarse_delay_i => coarse_delay_i(2 * (i + 1) - 1 downto 2 * i),
            fine_delay_i => fine_delay_i(4 * (i + 1) - 1 downto 4 * i),
            data_o => data_s(4 * sampling_len_g * (i + 1) - 1 downto 4 * sampling_len_g * i)
        );
    end generate ; -- sensors

    weights : process( data_s )
    type weights_array_t is array (0 to count_tdc_g - 1) of unsigned(7 downto 0);
    variable weight_v : weights_array_t;
    begin  
        concat : for i in 0 to count_tdc_g - 1  loop
            weight_v(i) := (others => '0');
            filter : for j in 0 to 4 * sampling_len_g - 1 loop
                if data_s(4 * sampling_len_g * i + j) = data_s(4 * sampling_len_g * i) then
                    weight_v(i) := weight_v(i) + 1;
                end if;
            end loop ; -- weights
            data_o(8 * (i + 1) - 1  downto 8 * i) <= std_logic_vector(weight_v(i));
        end loop ; -- sum
        
    end process ; -- weigths

end tdc_bank_arch ; -- tdc_bank_arch