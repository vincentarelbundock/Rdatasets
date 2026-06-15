========== ===============
adnv_neuro R Documentation
========== ===============

Nervous System Analysis Dataset
-------------------------------

Description
~~~~~~~~~~~

Nervous System Analysis Dataset

Usage
~~~~~

.. code:: R

   adnv_neuro

Format
~~~~~~

A data frame with 43 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

DOMAIN
   Domain Abbreviation

ASEQ
   Analysis Sequence Number

AGE
   Age

SEX
   Sex

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

PARAMN
   Parameter (N)

PARAM
   Parameter

PARAMCD
   Parameter Code

AVAL
   Analysis Value

BASE
   Baseline Value

BASETYPE
   Baseline Type

CRIT1
   Analysis Criterion 1

CRIT1FL
   Criterion 1 Evaluation Result Flag

ABLFL
   Baseline Record Flag

ANL01FL
   Analysis Flag 01

ANL02FL
   Analysis Flag 02

NVSEQ
   Sequence Number

NVLNKID
   Link ID

NVTESTCD
   Short Name of Nervous System Test

NVTEST
   Name of Nervous System Test

NVCAT
   Category for Nervous System Test

NVLOC
   Location Used for the Measurement

NVNAM
   Vendor Name

NVORRES
   Result or Finding in Original Units

NVORRESU
   Original Units

NVSTRESC
   Character Result/Finding in Std Format

NVSTRESN
   Numeric Result/Finding in Standard Units

NVSTRESU
   Standard Units

NVMETHOD
   Method of Test or Examination

NVLOBXFL
   Last Observation Before Exposure Flag

VISITNUM
   Visit Number

VISIT
   Visit Name

NVDTC
   Date/Time of Collection

NVDY
   Study Day of Visit/Collection/Exam

Details
~~~~~~~

Contains a set of 2 unique Parameter Codes and Parameters:

=========== =========================================
**PARAMCD** **PARAM**
UPSITPC     Percentile derived from UPSIT total score
UPSITTS     UPSIT Combined Score from 40 Odorant
=========== =========================================

Source
~~~~~~

Generated from admiralneuro package (template ad_adnv.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adnv_neuro")
