==== ===============
adab R Documentation
==== ===============

Anti-Drug Antibody Analysis Dataset
-----------------------------------

Description
~~~~~~~~~~~

Anti-Drug Antibody Analysis Dataset

Usage
~~~~~

.. code:: R

   adab

Format
~~~~~~

A data frame with 72 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

SUBJID
   Subject Identifier for the Study

SITEID
   Study Site Identifier

ASEQ
   Analysis Sequence Number

REGION1
   Geographic Region 1

COUNTRY
   Country

ETHNIC
   Ethnicity

AGE
   Age

AGEU
   Age Units

SEX
   Sex

RACE
   Race

SAFFL
   Safety Population Flag

TRT01P
   Description of Planned Arm

TRT01A
   Description of Actual Arm

TRTSDTM
   Datetime of First Exposure to Treatment

TRTSDT
   Date of First Exposure to Treatment

TRTEDTM
   Datetime of Last Exposure to Treatment

TRTEDT
   Date of Last Exposure to Treatment

ISSEQ
   Sequence Number

ISTESTCD
   Immunogenicity Test/Exam Short Name

ISTEST
   Immunogenicity Test or Examination Name

ISCAT
   Category for Immunogenicity Test

ISBDAGNT
   Binding Agent

ISSTRESC
   Character Result/Finding in Std Format

ISSTRESN
   Numeric Results/Findings in Std. Units

ISSTRESU
   Standard Units

ISSTAT
   Completion Status

ISREASND
   Reason Not Done

ISSPEC
   Specimen Type

DTL
   Drug Tolerance Level

MRT
   Minimum Reportable Titer

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

EPOCH
   Epoch

ISDTC
   Date/Time of Collection

ISDY
   Study Day of Visit/Collection/Exam

ISTPT
   Planned Time Point Name

ISTPTNUM
   Planned Time Point Number

PARAM
   Parameter

PARAMCD
   Parameter Code

PARCAT1
   Parameter Category 1

AVAL
   Analysis Value

AVALC
   Analysis Value (C)

AVALU
   Analysis Value Unit

BASETYPE
   Baseline Type

BASE
   Baseline Value

CHG
   Change from Baseline

DTYPE
   Derivation Type

ADTM
   Analysis Datetime

ADT
   Analysis Date

ADY
   Analysis Relative Day

ATMF
   Analysis Time Imputation Flag

AVISIT
   Analysis Visit

AVISITN
   Analysis Visit (N)

ATPT
   Analysis Timepoint

APHASE
   Phase

APHASEN
   Phase (N)

APERIOD
   Period

APERIODC
   Period (C)

FANLDTM
   First Datetime of Dose for Analyte

FANLDT
   First Date of Dose for Analyte

FANLTM
   First Time of Dose for Analyte

FANLTMF
   First Time of Dose for Analyte ImputeFL

NFRLT
   Nom. Rel. Time from Analyte First Dose

AFRLT
   Act. Rel. Time from Analyte First Dose

FRLTU
   Rel. Time from First Dose Unit

ABLFL
   Baseline Record Flag

ADABLPFL
   Baseline ADA Eval. Param-Level Flag

ADPBLPFL
   Post-Baseline ADA Eval. Param-Level Flag

ADAFL
   ADA Population Flag

Details
~~~~~~~

Contains a set of 22 unique Parameter Codes and Parameters:

+-------------+--------------------------------------------------------+
| **PARAMCD** | **PARAM**                                              |
+-------------+--------------------------------------------------------+
| ADADUR1     | ADA Duration (Weeks), Anti-XANOMELINE Antibody (1)     |
+-------------+--------------------------------------------------------+
| ADASTAT1    | ADA Status of a patient, Anti-XANOMELINE Antibody (1)  |
+-------------+--------------------------------------------------------+
| ADASTTV1    | ADA Status of a patient by Visit, Anti-XANOMELINE      |
|             | Antibody (1)                                           |
+-------------+--------------------------------------------------------+
| BABXANOM    | Anti-XANOMELINE Antibody, Titer Units (1)              |
+-------------+--------------------------------------------------------+
| BFLAG1      | Baseline Pos/Neg, Anti-XANOMELINE Antibody (1)         |
+-------------+--------------------------------------------------------+
| EMERNEG1    | Treatment Emergent - Negative, Anti-XANOMELINE         |
|             | Antibody (1)                                           |
+-------------+--------------------------------------------------------+
| EMERPOS1    | Treatment Emergent - Positive, Anti-XANOMELINE         |
|             | Antibody (1)                                           |
+-------------+--------------------------------------------------------+
| ENHANC1     | Treatment enhanced ADA, Anti-XANOMELINE Antibody (1)   |
+-------------+--------------------------------------------------------+
| FPPDTM1     | First Post Dose Positive Datetime, Anti-XANOMELINE     |
|             | Antibody (1)                                           |
+-------------+--------------------------------------------------------+
| INDUCD1     | Treatment induced ADA, Anti-XANOMELINE Antibody (1)    |
+-------------+--------------------------------------------------------+
| LPPDTM1     | Last Post Dose Positive Datetime, Anti-XANOMELINE      |
|             | Antibody (1)                                           |
+-------------+--------------------------------------------------------+
| NABSTAT1    | Nab Status, Anti-XANOMELINE Neutralizing Antibody (1)  |
+-------------+--------------------------------------------------------+
| NABXANOM    | Anti-XANOMELINE Neutralizing Antibody (1)              |
+-------------+--------------------------------------------------------+
| NOTRREL1    | No treatment related ADA, Anti-XANOMELINE Antibody (1) |
+-------------+--------------------------------------------------------+
| PBFLAGV1    | Post Baseline Pos/Neg by Visit, Anti-XANOMELINE        |
|             | Antibody (1)                                           |
+-------------+--------------------------------------------------------+
| PERSADA1    | Persistent ADA, Anti-XANOMELINE Antibody (1)           |
+-------------+--------------------------------------------------------+
| RESULT1     | ADA interpreted per sample result, Anti-XANOMELINE     |
|             | Antibody (1)                                           |
+-------------+--------------------------------------------------------+
| RESULT2     | Nab interpreted per sample result, Anti-XANOMELINE     |
|             | Neutralizing Antibody (2)                              |
+-------------+--------------------------------------------------------+
| TFLAGV1     | Treatment related ADA by Visit, Anti-XANOMELINE        |
|             | Antibody (1)                                           |
+-------------+--------------------------------------------------------+
| TIMADA1     | Time to onset of ADA (Weeks), Anti-XANOMELINE Antibody |
|             | (1)                                                    |
+-------------+--------------------------------------------------------+
| TRANADA1    | Transient ADA, Anti-XANOMELINE Antibody (1)            |
+-------------+--------------------------------------------------------+
| TRUNAFF1    | Treatment unaffected, Anti-XANOMELINE Antibody (1)     |
+-------------+--------------------------------------------------------+

Source
~~~~~~

Generated from admiral package (template ad_adab.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adab")
