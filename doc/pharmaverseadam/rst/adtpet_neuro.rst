============ ===============
adtpet_neuro R Documentation
============ ===============

Tau PET Scan Analysis Dataset
-----------------------------

Description
~~~~~~~~~~~

Tau PET Scan Analysis Dataset

Usage
~~~~~

.. code:: R

   adtpet_neuro

Format
~~~~~~

A data frame with 46 columns:

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

Contains a set of 2 unique Parameter Codes and Parameters:

+-------------+--------------------------------------------------------+
| **PARAMCD** | **PARAM**                                              |
+-------------+--------------------------------------------------------+
| SUVRAFTP    | AVID FTP Standard Uptake Ratio Neocortical Composite   |
|             | Inferior Cerebellar Gray Matter                        |
+-------------+--------------------------------------------------------+
| SUVRBFTP    | BERKELEY FTP Standard Uptake Ratio Neocortical         |
|             | Composite Inferior Cerebellar Gray Matter              |
+-------------+--------------------------------------------------------+

Source
~~~~~~

Generated from admiralneuro package (template ad_adtpet.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adtpet_neuro")
