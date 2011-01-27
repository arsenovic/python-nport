*******************************************************************************
*** CONTROL OPTIONS ***********************************************************
*******************************************************************************

*******************************************************************************
*** INCLUDES ******************************************************************
*******************************************************************************

*******************************************************************************
*** PARAMETERS ****************************************************************
*******************************************************************************

*******************************************************************************
*** SUBCIRCUITS ***************************************************************
*******************************************************************************

*******************************************************************************
*** CIRCUIT *******************************************************************
*******************************************************************************

P1 n1x GND port=1 DC='Vg' RDC=0

RDUT1 n1x nc 890
RDUT2 n2x nc 760
RDUT3 n3x nc 580

Rnul n3x GND 1e-5

P2 n2x GND port=2 DC='Vd' RDC=0

*******************************************************************************
*** ANALYSIS ******************************************************************
*******************************************************************************

.ac lin 100 1 300G
.lin sparcalc=1 format=touchstone filename=deemb_dut

*******************************************************************************
*** SAVED DATA ****************************************************************
*******************************************************************************

*******************************************************************************
*** HSPICE OPTIONS ************************************************************
*******************************************************************************

.option post nomod brief parhier=local

.end
