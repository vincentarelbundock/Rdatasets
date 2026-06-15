============== ===============
adlb_metabolic R Documentation
============== ===============

Laboratory Analysis for Metabolic
---------------------------------

Description
~~~~~~~~~~~

Laboratory Analysis for Metabolic

Usage
~~~~~

.. code:: R

   adlb_metabolic

Format
~~~~~~

A data frame with 43 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

DOMAIN
   Domain Abbreviation

TRT01P
   Planned Treatment for Period 01

TRT01A
   Actual Treatment for Period 01

TRTSDT
   Date of First Exposure to Treatment

TRTEDT
   Date of Last Exposure to Treatment

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

PARCAT2
   Parameter Category 2

AVAL
   Analysis Value

AVALC
   Analysis Value (C)

ANRLO
   Analysis Normal Range Lower Limit

ANRHI
   Analysis Normal Range Upper Limit

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

LBFAST
   Fasting Status

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

BMI
   Body Mass Index (kg/m2)

WSTCIR
   Waist Circumference (cm)

Details
~~~~~~~

Contains a set of 11 unique Parameter Codes and Parameters:

=========== =================================================
**PARAMCD** **PARAM**
ALB         Albumin (g/L)
ALKPH       Alkaline Phosphatase (U/L)
AST         Aspartate Aminotransferase (U/L)
CHOLES      Cholesterol (mmol/L)
FLI         Fatty Liver Index
GGT         Gamma Glutamyl Transferase (U/L)
GLUC        Glucose (mmol/L)
HBA1CHGB    Hemoglobin A1C/Hemoglobin (mmol/mol)
HOMAIR      Homeostasis Model Assessment - Insulin Resistance
INSULIN     Insulin (mIU/L)
TRIG        Triglycerides (mg/dL)
=========== =================================================

Source
~~~~~~

Generated from admiralmetabolic package (template ad_adlb.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adlb_metabolic")
