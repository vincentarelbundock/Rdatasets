==== ===============
adpc R Documentation
==== ===============

Pharmacokinetic Concentrations
------------------------------

Description
~~~~~~~~~~~

Pharmacokinetic Concentrations

Usage
~~~~~

.. code:: R

   adpc

Format
~~~~~~

A data frame with 128 columns:

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
   Under 30 Group

DTHA30FL
   Over 30 Group

DTHDOM
   Domain for Date of Death Collection

DTHB30FL
   Over 30 plus 30 days Group

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

DOSEP
   Planned Treatment Dose

DOSEA
   Actual Treatment Dose

DOSEU
   Treatment Dose Units

ADT
   Analysis Date

ATM
   Analysis Time

ADTM
   Analysis Datetime

ADY
   Analysis Relative Day

ATMF
   Analysis Time Imputation Flag

ASTDT
   Analysis Start Date

ASTTM
   Analysis Start Time

ASTDTM
   Analysis Start Datetime

AENDT
   Analysis End Date

AENTM
   Analysis End Time

AENDTM
   Analysis End Datetime

AVISIT
   Analysis Visit

AVISITN
   Analysis Visit (N)

ATPT
   Analysis Timepoint

ATPTN
   Analysis Timepoint (N)

ATPTREF
   Analysis Timepoint Reference

PARAM
   Parameter

PARAMCD
   Parameter Code

PARAMN
   Parameter (N)

PARCAT1
   Parameter Category 1

AVAL
   Analysis Value

AVALU
   Analysis Value Unit

AVALCAT1
   Analysis Value Category 1

BASE
   Baseline Value

BASETYPE
   Baseline Type

CHG
   Change from Baseline

DTYPE
   Derivation Type

ABLFL
   Baseline Record Flag

ANL01FL
   Analysis Flag 01

ANL02FL
   Analysis Flag 02

SRCDOM
   Source Data

SRCVAR
   Source Variable

SRCSEQ
   Source Sequence Number

NFRLT
   Nom. Rel. Time from Analyte First Dose

PCTESTCD
   Pharmacokinetic Test Short Name

PCTEST
   Pharmacokinetic Test Name

PCORRES
   Result or Finding in Original Units

PCORRESU
   Original Units

PCSTRESC
   Character Result/Finding in Std Format

PCSTRESN
   Numeric Result/Finding in Standard Units

PCSTRESU
   Standard Units

PCNAM
   Vendor Name

PCSPEC
   Specimen Material Type

PCLLOQ
   Lower Limit of Quantitation

VISIT
   Visit Name

VISITNUM
   Visit Number

VISITDY
   Planned Study Day of Visit

PCDTC
   Date/Time of Specimen Collection

PCDY
   Actual Study Day of Specimen Collection

PCTPT
   Planned Time Point Name

PCTPTNUM
   Planned Time Point Number

FANLDTM
   First Datetime of Dose for Analyte

AFRLT
   Act. Rel. Time from Analyte First Dose

ARRLT
   Actual Rel. Time from Ref. Dose

PCRFTDTM
   Reference Datetime of Dose for Analyte

FANLDT
   First Date of Dose for Analyte

FANLTM
   First Time of Dose for Analyte

PCRFTDT
   Reference Date of Dose for Analyte

PCRFTTM
   Reference Time of Dose for Analyte

NRRLT
   Nominal Rel. Time from Ref. Dose

FRLTU
   Rel. Time from First Dose Unit

RRLTU
   Rel. Time from Ref. Dose Unit

ALLOQ
   Analysis Lower Limit of Quantitation

MRRLT
   Modified Rel. Time from Ref. Dose

HTBL
   Numeric Result/Finding in Standard Units

HTBLU
   Standard Units

WTBL
   Numeric Result/Finding in Standard Units

WTBLU
   Standard Units

BMIBL
   Baseline Body Mass Index (kg/m2)

BMIBLU
   BMI at Baseline (Unit)

Details
~~~~~~~

Contains a set of 2 unique Parameter Codes and Parameters:

=========== ===========================================
**PARAMCD** **PARAM**
DOSE        Xanomeline Patch Dose
XAN         Pharmacokinetic concentration of Xanomeline
=========== ===========================================

Source
~~~~~~

Generated from admiral package (template ad_adpc.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adpc")
