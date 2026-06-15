============= ===============
adbcva_ophtha R Documentation
============= ===============

Best Corrected Visual Acuity Analysis
-------------------------------------

Description
~~~~~~~~~~~

Best Corrected Visual Acuity Analysis

Usage
~~~~~

.. code:: R

   adbcva_ophtha

Format
~~~~~~

A data frame with 71 columns:

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

ATPT
   Analysis Timepoint

ATPTN
   Analysis Timepoint (N)

PARAM
   Parameter

PARAMCD
   Parameter Code

AVAL
   Analysis Value

AVALC
   Analysis Value (C)

AVALU
   Analysis Value Unit

AVALCAT1
   Analysis Value Category 1

AVALCA1N
   Analysis Value Category 1 (N)

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

CRIT1
   Analysis Criterion 1

CRIT1FL
   Criterion 1 Evaluation Result Flag

CRIT2
   Analysis Criterion 2

CRIT2FL
   Criterion 2 Evaluation Result Flag

CRIT3
   Analysis Criterion 3

CRIT3FL
   Criterion 3 Evaluation Result Flag

CRIT4
   Analysis Criterion 4

CRIT4FL
   Criterion 4 Evaluation Result Flag

CRIT5
   Analysis Criterion 5

CRIT5FL
   Criterion 5 Evaluation Result Flag

CRIT6
   Analysis Criterion 6

CRIT6FL
   Criterion 6 Evaluation Result Flag

CRIT7
   Analysis Criterion 7

CRIT7FL
   Criterion 7 Evaluation Result Flag

CRIT8
   Analysis Criterion 8

CRIT8FL
   Criterion 8 Evaluation Result Flag

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

Contains a set of 4 unique Parameter Codes and Parameters:

=========== ========================================
**PARAMCD** **PARAM**
FBCVA       Fellow Eye Visual Acuity Score (letters)
FBCVALOG    Fellow Eye Visual Acuity LogMAR Score
SBCVA       Study Eye Visual Acuity Score (letters)
SBCVALOG    Study Eye Visual Acuity LogMAR Score
=========== ========================================

Source
~~~~~~

Generated from admiralophtha package (template ad_adbcva.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adbcva_ophtha")
