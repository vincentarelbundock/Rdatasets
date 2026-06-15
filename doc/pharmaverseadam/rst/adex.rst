==== ===============
adex R Documentation
==== ===============

Exposure Analysis
-----------------

Description
~~~~~~~~~~~

Exposure Analysis

Usage
~~~~~

.. code:: R

   adex

Format
~~~~~~

A data frame with 92 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

SUBJID
   Subject Identifier for the Study

SITEID
   Study Site Identifier

COUNTRY
   Country

DOMAIN
   Domain Abbreviation

RFSTDTC
   Subject Reference Start Date/Time

RFENDTC
   Subject Reference End Date/Time

RFXSTDTC
   Date/Time of First Study Treatment

RFXENDTC
   Date/Time of Last Study Treatment

RFPENDTC
   Date/Time of End of Participation

SCRFDT
   Screen Failure Date

FRVDT
   Final Retrieval Visit Date

DTHDTC
   Date/Time of Death

DTHADY
   Relative Day of Death

DTHFL
   Subject Death Flag

LDDTHELD
   Elapsed Days from Last Dose to Death

LDDTHGR1
   Last Dose to Death - Days Elapsed Grp 1

DTH30FL
   Death Within 30 Days of Last Trt Flag

DTHA30FL
   Death After 30 Days from Last Trt Flag

DTHDOM
   Domain for Date of Death Collection

DTHB30FL
   Death Within 30 Days of First Trt Flag

ASEQ
   Analysis Sequence Number

REGION1
   Geographic Region 1

DMDTC
   Date/Time of Collection

DMDY
   Study Day of Collection

AGE
   Age

AGEU
   Age Units

AGEGR1
   Pooled Age Group 1

SEX
   Sex

RACE
   Race

RACEGR1
   Pooled Race Group 1

ETHNIC
   Ethnicity

SAFFL
   Safety Population Flag

ARM
   Description of Planned Arm

ARMCD
   Planned Arm Code

ACTARM
   Description of Actual Arm

ACTARMCD
   Actual Arm Code

TRT01P
   Planned Treatment for Period 01

TRT01A
   Actual Treatment for Period 01

TRTSDT
   Date of First Exposure to Treatment

TRTSDTM
   Datetime of First Exposure to Treatment

TRTSTMF
   Time of First Exposure Imput. Flag

TRTEDT
   Date of Last Exposure to Treatment

TRTEDTM
   Datetime of Last Exposure to Treatment

TRTETMF
   Time of Last Exposure Imput. Flag

EOSSTT
   End of Study Status

EOSDT
   End of Study Date

RFICDTC
   Date/Time of Informed Consent

RANDDT
   Date of Randomization

LSTALVDT
   Date Last Known Alive

TRTDURD
   Total Treatment Duration (Days)

DTHDT
   Date of Death

DTHDTF
   Date of Death Imputation Flag

DTHCAUS
   Cause of Death

DTHCGR1
   Cause of Death Reason 1

EXTRT
   Name of Treatment

EXDOSE
   Dose

EXDOSFRM
   Dose Form

EXDOSFRQ
   Dosing Frequency per Interval

EXROUTE
   Route of Administration

EXADJ
   Reason for Dose Adjustment

EXSTDTC
   Start Date/Time of Treatment

EXENDTC
   End Date/Time of Treatment

EXSTDY
   Study Day of Start of Treatment

EXENDY
   Study Day of End of Treatment

EXSEQ
   Sequence Number

ASTDT
   Analysis Start Date

AENDT
   Analysis End Date

EXDURD
   Duration of Treatment (Days)

EXDOSU
   Dose Units

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

EXPLDOS
   Planned Dose

ASTDTM
   Analysis Start Datetime

ASTDTF
   Analysis Start Date Imputation Flag

ASTTMF
   Analysis Start Time Imputation Flag

AENDTM
   Analysis End Datetime

AENDTF
   Analysis End Date Imputation Flag

AENTMF
   Analysis End Time Imputation Flag

ASTDY
   Analysis Start Relative Day

AENDY
   Analysis End Relative Day

DOSEO
   Dose O

PDOSEO
   PDose O

PARAMCD
   Parameter Code

AVAL
   Analysis Value

AVALC
   Analysis Value (C)

PARCAT1
   Parameter Category 1

PARAM
   Parameter

PARAMN
   Parameter (N)

AVALCAT1
   Analysis Value Category 1

Details
~~~~~~~

Contains a set of 19 unique Parameter Codes and Parameters:

=========== ==========================================================
**PARAMCD** **PARAM**
ADJ         Dose adjusted during constant dosing interval
ADJAE       Dose adjusted due to AE during constant dosing interval
AVDDSE      Average daily dose administered (mg/mg)
DOSE        Dose administered during constant dosing interval (mg)
DURD        Study drug duration during constant dosing interval (days)
PADJ        Dose adjusted during W2-W24
PADJAE      Dose adjusted in W2-W24 due to AE
PAVDDSE     Average daily dose administered in W2-W24 (mg)
PDOSE       Total dose administered in W2-W2 (mg)4
PDOSINT     W2-24 dose intensity (%)
PDURD       Overall duration in W2-W24 (days)
PLDOSE      Planned dose during constant dosing interval (mg)
PPDOSE      Total planned dose in W2-W24 (mg)
TADJ        Dose adjusted during study
TADJAE      Dose adjusted during study due to AE
TDOSE       Total dose administered (mg)
TDOSINT     Overall dose intensity (%)
TDURD       Overall duration (days)
TPDOSE      Total planned dose (mg)
=========== ==========================================================

Source
~~~~~~

Generated from admiral package (template ad_adex.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adex")
