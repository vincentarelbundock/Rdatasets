============ ===============
adapet_neuro R Documentation
============ ===============

Amyloid PET Scan Analysis Dataset
---------------------------------

Description
~~~~~~~~~~~

Amyloid PET Scan Analysis Dataset

Usage
~~~~~

.. code:: R

   adapet_neuro

Format
~~~~~~

A data frame with 49 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

DOMAIN
   Domain Abbreviation

ASEQ
   Analysis Sequence Number

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

ONTRTFL
   On Treatment Record Flag

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

REFREG
   Reference Region

AGTRT
   Reported Agent Name

AGCAT
   Category for Agent

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

Contains a set of 7 unique Parameter Codes and Parameters:

+-------------+--------------------------------------------------------+
| **PARAMCD** | **PARAM**                                              |
+-------------+--------------------------------------------------------+
| CENTLD      | Centiloid value derived from SUVR pipeline             |
+-------------+--------------------------------------------------------+
| SUVRAFBB    | AVID FBB Standard Uptake Ratio Neocortical Composite   |
|             | Whole Cerebellum                                       |
+-------------+--------------------------------------------------------+
| SUVRAFBP    | AVID FBP Standard Uptake Ratio Neocortical Composite   |
|             | Whole Cerebellum                                       |
+-------------+--------------------------------------------------------+
| SUVRBFBB    | BERKELEY FBB Standard Uptake Ratio Neocortical         |
|             | Composite Whole Cerebellum                             |
+-------------+--------------------------------------------------------+
| SUVRBFBP    | BERKELEY FBP Standard Uptake Ratio Neocortical         |
|             | Composite Whole Cerebellum                             |
+-------------+--------------------------------------------------------+
| VRFBB       | FBB Qualitative Visual Classification                  |
+-------------+--------------------------------------------------------+
| VRFBP       | FBP Qualitative Visual Classification                  |
+-------------+--------------------------------------------------------+

Source
~~~~~~

Generated from admiralneuro package (template ad_adapet.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adapet_neuro")
