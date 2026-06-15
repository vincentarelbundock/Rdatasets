=========== ===============
adoe_ophtha R Documentation
=========== ===============

Exam Analysis for Ophthalmology
-------------------------------

Description
~~~~~~~~~~~

Exam Analysis for Ophthalmology

Usage
~~~~~

.. code:: R

   adoe_ophtha

Format
~~~~~~

A data frame with 103 columns:

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

ADT
   Analysis Date

ADY
   Analysis Relative Day

AVISIT
   Analysis Visit

AVISITN
   Analysis Visit (N)

ATPT
   Analysis Timepoint

ATPTN
   Analysis Timepoint (N)

PARAM
   Parameter

PARAMCD
   Parameter Code

PARAMN
   Parameter (N)

AVAL
   Analysis Value

AVALC
   Analysis Value (C)

AVALU
   Analysis Value Unit

BASE
   Baseline Value

BASEC
   Baseline Value (C)

BASETYPE
   Baseline Type

CHG
   Change from Baseline

PCHG
   Percent Change from Baseline

DTYPE
   Derivation Type

ABLFL
   Baseline Record Flag

ANL01FL
   Analysis Flag 01

ANL02FL
   Analysis Flag 02

ONTRTFL
   On Treatment Record Flag

OESEQ
   Sequence Number

OECAT
   Category for Ophthalmic Test or Exam

OESCAT
   Subcategory for Ophthalmic Test or Exam

OEDTC
   Date/Time of Collection

VISIT
   Visit Name

VISITNUM
   Visit Number

VISITDY
   Planned Study Day of Visit

OESTRESN
   Numeric Result/Finding in Standard Units

OESTRESC
   Character Result/Finding in Std Format

OEORRES
   Result or Finding in Original Units

OETEST
   Name of Ophthalmic Test or Exam

OETESTCD
   Short Name of Ophthalmic Test or Exam

OETSTDTL
   Ophthalmic Test or Exam Detail

OELAT
   Laterality

OELOC
   Location Used for the Measurement

OEDY
   Study Day of Visit/Collection/Exam

OEMETHOD
   Method of Test or Examination

OEORRESU
   Original Units

OESTRESU
   Standard Units

OESTAT
   Completion Status

OETPT
   Planned Time Point Name

OETPTNUM
   Planned Time Point Number

STUDYEYE
   Study Eye Location

AFEYE
   Affected Eye

WORS01FL
   Worst Post Baseline Obs

Details
~~~~~~~

Contains a set of 8 unique Parameter Codes and Parameters:

=========== ===========================================
**PARAMCD** **PARAM**
FCSUBTH     Fellow Eye Center Subfield Thickness (um)
FDRSSR      Fellow Eye Diabetic Retinopathy Severity
FIOP        Fellow Eye IOP (mmHg)
FIOPCHG     Fellow Eye IOP Pre to Post Dose Diff (mmHg)
SCSUBTH     Study Eye Center Subfield Thickness (um)
SDRSSR      Study Eye Diabetic Retinopathy Severity
SIOP        Study Eye IOP (mmHg)
SIOPCHG     Study Eye IOP Pre to Post Dose Diff (mmHg)
=========== ===========================================

Source
~~~~~~

Generated from admiralophtha package (template ad_adoe.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adoe_ophtha")
