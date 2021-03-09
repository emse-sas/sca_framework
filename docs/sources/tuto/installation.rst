Tuto #1 - Install the Framework
===============================================================

**Duration:** 1-2 hours (more if you need to download the Xilinx tools)

Goals
***************************************************************

The goal of this installation tutorial is to setup the SCAbox framework. At the end of this tutorial you will able to run your own synthetized and compiled version of the Tuto#0.

This can be done in two steps :

1. Install the hardware (Xilinx Vivado)
2. Install the software (Xilinx Vitis)

It is mainly useful to go this way when you want to customize the framework by adding sensors, crypto-cores or use another development board.

Requirements
***************************************************************

- A Xilinx Zynq-7000 SoC development board
- A micro USB cable
- Xilinx Vivado IDE
- Xilinx Vitis SDK
- Any terminal emulator such as PuTTY, TeraTerm or picocom

Emulator setup
***************************************************************

The terminal emulator allows to communicate via UART with the SoC.
It must be configured properly in order to work and allow command typing.
Bellow is given the emulator configuration used :

- port is        : /dev/ttyUSBx
- flowcontrol    : none
- baudrate is    : 115200
- parity is      : none
- databits are   : 8
- stopbits are   : 1
- local echo is  : yes

.. note::
   - If your terminal provide it, you can also use the local line edit.
   - Port name can vary according to your OS, eg. on windows its COMx 

Tutorial 
***************************************************************

Install the Hardware
---------------------------------------------------------------

In this step we explain how to :

- Create the SCAbox block design from an empty new vivado project
- Generate the hardware specification file and bitstream

1. Create a new RTL project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Click on **File > Project > New**
2. Select project name and location
3. Choose RTL project
4. Do not add any sources/constraints
5. Select the part/board you are using (you can follow `this <https://reference.digilentinc.com/reference/software/vivado/board-files>`_ digilent tutorial if your board reference does not appear)
6. Create the project

.. image:: media/img/summary_project.png
   :width: 640
   :alt: IP repo
   :align: center

2. Add the IP repository to the project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Click on **Flow Navigator > Project Manager > IP Catalog**
2. Right click on **Vivado Repository** and select **Add Repository**
3. Select the **your_path/sca-ip/ip_repo** folder 

Once it is done you must be able to see the added IPs in the repository list.

.. image:: media/img/ip_repo.png
   :width: 640
   :alt: IP repo
   :align: center

3. Create the block design
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Click on **Flow Navigator > IP integrator > Create Block Design**
2. Call it "**SCAbox**" and press **OK**

Now IPs can be added to the design 

3. Press the **+** button and search for **ZYNQ7 Processing System**. double click to add it.
4. Press the **+** button and search for **FIFO Controller and FIFO**. double click to add it.
5. Press the **+** button and search for **Time to Digital Converter (TDC)**. double click to add it.
6. Press the **+** button and search for **Advanced Encryption Standard (AES)**. double click to add it.

You should see the following IPs in your block design

.. image:: media/img/ip_block_design.png
   :width: 640
   :alt: IP block design
   :align: center

4. Connect the IP cores
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Select **Run Block Automation** in the designer assistance (green message in the diagram view). Make sure **apply board preset** is checked and press ok

.. image:: media/img/block_automation.png
   :width: 640
   :alt: IP block design
   :align: center

2. Double click on the **ZYNQ7 processing system** block and select **Clock Configuration**

3. In the PL Fabric clock arborescence check **FCLK_CLK0** and set its frequency to **50MHz** (AXI clock), check **FCLK_CLK1** and set its frequency to **200MHz** (sensor clock), check **FCLK_CLK2** and set its frequency to **10MHz** (target clock)

.. image:: media/img/zynq_clock.png
   :width: 640
   :alt: IP block design
   :align: center

4. Connect each clock signal according to the screenshot below.

.. image:: media/img/connect_clock.png
   :width: 640
   :alt: IP block design
   :align: center

5. Double click on the **Time to Digital Converter IP** block and set **Depth** to 8 (resolution), **Count** to 8 (number of sensor), **Width** to 32 (data width for storage).

.. image:: media/img/tdc_param.png
   :width: 400
   :alt: IP block design
   :align: center

6. connect **TDC data_o[31:0]** to FIFO **data_i[31:0]**
7. connect **AES start_o** to FIFO **start_i** 
8. connect **AES done_o** to FIFO **done_i**

At this point, the design should look like this

.. image:: media/img/connected_design.png
   :width: 640
   :alt: IP block design
   :align: center

9. Select **Run Connection Automation** in the designer assistance (green message in the diagram view). Check **All Automation** and press **OK**

Vivado automatically adds interconnect and reset AXI blocks. The design is ready.

.. image:: media/img/connected_axi_design.png
   :width: 640
   :alt: IP block design
   :align: center


Generate the hardware
---------------------------------------------------------------

At this point, few steps are required to have a working bitstream.

1. Generate a HDL wrapper
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Go into the **Sources** tab
2. Right click on **SCAbox** under **Design Sources**
3. Select Create a HDL wrapper
4. Let Vivado manage the wrapper

.. image:: media/img/wrapper.png
   :width: 300
   :alt: IP block design
   :align: center

5. Click on **Flow Navigator > IP Integrator > Generate Block Design**
6. Click on Generate to generate the wrapper

2. Configure manual sensors placement
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note::
	We manually set the TDC sensor placement within the FPGA in order to obtain better side-channel results during the acquisition phase. 

1. Go into the **Design Runs** tab 

.. image:: media/img/design_run.png
   :width: 640
   :alt: IP block design
   :align: center

2. Right click on **impl_1** and select **Change Run Settings**
3. Go to the **Place Design** section in the list
4. Change the **tcl.pre** property by clicking the browse button
5. Select new script and browse for the file **your_path/sca-demo-tdc-aes/tcl/place.tcl**
6. Avoid copying sources into the project and click **Ok**

..		
	Add constraints
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	1. Go into the **Sources** tab
	2. Click on the add button 
	3. Select Add or create constraints
	4. Add the constraint file **[demo root]/xdc/zybo_cst.xdc**

	**Note** You might have to specify your own constraints if you are not using a Zybo board

3. Generate bitstream and specification
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Click on **Flow Navigator > Program and Debug > Generate Bitstream**
2. Wait for the synthesis, implementation and bitstream writing to finish

.. image:: media/img/bitstream.png
   :width: 300
   :alt: bitstream success
   :align: center

3. Click on **File > Export > Export Hardware**
4. Select **Fixed** (on vivado 2020)
4. Select **Include bitstream** and click **Ok**

.. image:: media/img/export_hw.png
   :width: 300
   :alt: export hw
   :align: center

At this point Vivado must have created a .xsa file at the location you gave.
This file will later be used by Vitis to generate a platform project that will handle
all our hardware and drivers for the design we created.

.. note::
	If you are using SDK instead of Vitis, you do not have a .xsa file but a .hdf file (hardware definition).


Install the Software
---------------------------------------------------------------

If you completed the previous steps or if you are already provided with a BSP or a hardware specification
you are now able to bind the hardware with the demo project. To do so :

1. From vivado select **File > Launch SDK**. 
2. Launch the application

Create a new system project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You must launch Vitis in order to follow the steps bellow.

Create a new platform project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Click on **File > New > Platform Project**
2. Name your platform
3. Browse for your .xsa file
4. Click on Finish to create the platform

**Note** In SDK just launch SDK from Vivado with the hardware project open and the platform project will be created.

Create a new application project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Click on **File > New > Application Project**
2. Select the previously added platform
3. Name the project and let default values for other parameters
4. Ensure the standalone domain is selected
5. Select the **Empty Application** template
6. Right click on the application project in the **Explorer**
7. Click on **Import Sources**
8. Add the .c and .h files in **[demo root]/src**

Add includes to the project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Right click on the application project previously created on the **Explorer**
2. Select **C/C++ Build Settings**
3. In the **Tool Settings** tab go to **ARM v7 gcc compiler > Directories**
4. Add each directory in the **[demo root]/modules** as **Include Paths**

If you correctly imported the includes you must have the following configuration :

.. image:: media/img/install_includes.png
   :width: 640
   :alt: Application includes
   :align: center

Generate a linker script
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

It is likely that the default linker script will set the heap and stack size to smaller values than what is needed for the demo.

1. Right click on the application project previously created on the **Explorer**
2. Select **Generate linker script**
3. Modify the **Heap Size** to 32KB
4. Modify the **Stack Size** to 32KB

**Note** These values are arbitrary and might not be optimal be guarantee that the demo do not overflows.

Launch the application
---------------------------------------------------------------

Build the project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Right click on the platform project
2. Click on **Build Project**
3. Do the same for the application project
4. Build the system project

Launch UART communication
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Plug your board and turn it ON
2. Ensure the mode register is set to JTAG (JP5 on Zybo)
3. Launch your terminal emulator
4. Configure a serial connection as shown above
5. Start a session with the emulator

Run the application
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Right click on the application project
2. Click on **Run As > Launch on Hardware**
3. Switch to the terminal session
4. Ensure local echo is on for the session.
5. Into the terminal type the command ``tdc``
6. Press Enter

If everything went well, you should see an output similar to the following obtained with picocom :

.. image:: media/img/install_app.png
   :width: 640
   :alt: Application output
   :align: center

The value displayed by the command is the current sensors value.
The last displayed line must be the one bellow, indicating that the SoC is ready to receive commands.

.. code-block:: shell

    > 

Conclusion
***************************************************************

In this tutorial you learn how to generate the test-bench block design and a bitstream associated to it.
Then you used this bitstream to create a hardware specification and integrated it into a demo application for the test-bench.

Keep in mind that mastering this workflow will allow you to customize both the hardware and software of the test-bench.
The block-design and the demo are only an example of what can be achieved with the framework.

You can try to customize the IPs already present by right-clicking on it and select Customize IP.
You can also change the IPs already present with different ones.
You can adapt the block-design to your board if you are not using a Zybo-Z7010.
