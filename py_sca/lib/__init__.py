"""Library for py_sca application

This library provide the basic features to perform a side-channel attack on SoC
by using the power consumption leakage.

The basic flow to attack a Soc is the following :

1. Acquire side-channel data (consumption traces)
2. Parse and process the data
3. Compute correlation
4. Find the maximum of correlation
"""
