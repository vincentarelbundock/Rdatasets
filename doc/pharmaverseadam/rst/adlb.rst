==== ===============
adlb R Documentation
==== ===============

Laboratory Analysis
-------------------

Description
~~~~~~~~~~~

Laboratory Analysis

Usage
~~~~~

.. code:: R

   adlb

Format
~~~~~~

A data frame with 115 columns:

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

TRTP
   Planned Treatment

TRTA
   Actual Treatment

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

AVALC
   Analysis Value (C)

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

R2BASE
   Ratio to Baseline

R2ANRLO
   Ratio of Analysis Val compared to ANRLO

R2ANRHI
   Ratio of Analysis Val compared to ANRHI

SHIFT1
   Shift from Baseline to Analysis Value

SHIFT2
   Shift from Baseline to Overall Grade

DTYPE
   Derivation Type

ATOXGR
   Analysis Toxicity Grade

BTOXGR
   Baseline Toxicity Grade

ANRIND
   Analysis Reference Range Indicator

BNRIND
   Baseline Reference Range Indicator

ANRLO
   Analysis Normal Range Lower Limit

ANRHI
   Analysis Normal Range Upper Limit

ATOXGRL
   Analysis Toxicity Grade Low

ATOXGRH
   Analysis Toxicity Grade High

BTOXGRL
   Baseline Toxicity Grade Low

BTOXGRH
   Baseline Toxicity Grade High

ATOXDSCL
   Analysis Toxicity Description Low

ATOXDSCH
   Analysis Toxicity Description High

ABLFL
   Baseline Record Flag

ANL01FL
   Analysis Flag 01

ONTRTFL
   On Treatment Record Flag

LVOTFL
   Last Value On Treatment Record Flag

LBSEQ
   Sequence Number

LBTESTCD
   Lab Test or Examination Short Name

LBTEST
   Lab Test or Examination Name

LBCAT
   Category for Lab Test

LBORRES
   Result or Finding in Original Units

LBORRESU
   Original Units

LBORNRLO
   Reference Range Lower Limit in Orig Unit

LBORNRHI
   Reference Range Upper Limit in Orig Unit

LBSTRESC
   Character Result/Finding in Std Format

LBSTRESN
   Numeric Result/Finding in Standard Units

LBSTRESU
   Standard Units

LBSTNRLO
   Reference Range Lower Limit-Std Units

LBSTNRHI
   Reference Range Upper Limit-Std Units

LBNRIND
   Reference Range Indicator

LBBLFL
   Baseline Flag

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

LBDTC
   Date/Time of Specimen Collection

LBDY
   Study Day of Specimen Collection

Details
~~~~~~~

Contains a set of 47 unique Parameter Codes and Parameters:

=========== ================================================
**PARAMCD** **PARAM**
ALB         Albumin (g/L)
ALKPH       Alkaline Phosphatase (U/L)
ALT         Alanine Aminotransferase (U/L)
ANISO       Anisocytes
AST         Aspartate Aminotransferase (U/L)
BASO        Basophils Abs (10^9/L)
BASOLE      Basophils/Leukocytes (FRACTION)
BILI        Bilirubin (umol/L)
BUN         Blood Urea Nitrogen (mmol/L)
CA          Calcium (mmol/L)
CHOLES      Cholesterol (mmol/L)
CK          Creatinine Kinase (U/L)
CL          Chloride (mmol/L)
COLOR       Color
CREAT       Creatinine (umol/L)
EOS         Eosinophils (10^9/L)
EOSLE       Eosinophils/Leukocytes (FRACTION)
GGT         Gamma Glutamyl Transferase (U/L)
GLUC        Glucose (mmol/L)
HBA1C       Hemoglobin A1C (1)
HCT         Hematocrit (1)
HGB         Hemoglobin (mmol/L)
KETON       Ketones
LYMPH       Lymphocytes Abs (10^9/L)
LYMPHLE     Lymphocytes/Leukocytes (FRACTION)
MACROC      Macrocytes
MCH         Ery. Mean Corpuscular Hemoglobin (fmol(Fe))
MCHC        Ery. Mean Corpuscular HGB Concentration (mmol/L)
MCV         Ery. Mean Corpuscular Volume (f/L)
MICROC      Microcytes
MONO        Monocytes (10^9/L)
MONOLE      Monocytes/Leukocytes (FRACTION)
PH          pH
PHOS        Phosphate (mmol/L)
PLAT        Platelet (10^9/L)
POIKIL      Poikilocytes
POLYCH      Polychromasia
POTAS       Potassium (mmol/L)
PROT        Protein (g/L)
RBC         Erythrocytes (TI/L)
SODIUM      Sodium (mmol/L)
SPGRAV      Specific Gravity
TSH         Thyrotropin (mU/L)
URATE       Urate (umol/L)
UROBIL      Urobilinogen
VITB12      Vitamin B12 (pmol/L)
WBC         Leukocytes (10^9/L)
=========== ================================================

Source
~~~~~~

Generated from admiral package (template ad_adlb.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adlb")
