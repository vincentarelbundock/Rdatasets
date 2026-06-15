====== ===============
is_ada R Documentation
====== ===============

Immunogenicity Specimen Assessments for ADA
-------------------------------------------

Description
~~~~~~~~~~~

A SDTM IS dataset containing relevant antidrug antibody assessment
studies

Usage
~~~~~

.. code:: R

   is_ada

Format
~~~~~~

A data frame with 27 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

ISSEQ
   Sequence Number

ISTESTCD
   Immunogenicity Test/Exam Short Name

ISTEST
   Immunogenicity Test or Examination Name

ISBDAGNT
   Binding Agent

ISCAT
   Category for Immunogenicity Test

ISORRES
   Results or Findings in Original Units

ISORRESU
   Original Units

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

ISNAM
   Vendor Name

ISSPEC
   Specimen Type

ISBLFL
   Baseline Flag

ISLLOQ
   Lower Limit of Quantitation

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

Details
~~~~~~~

Immunogenicity Specimen Assessments for ADA

A SDTM IS dataset containing relevant antidrug antibody assessment
studies

Contains a set of 2 unique Test Short Names and Test Names:

============ ======================================
**ISTESTCD** **ISTEST**
ADA_BAB      Binding Antidrug Antibody
ADA_NAB      Neutralizing Binding Antidrug Antibody
============ ======================================

Author(s)
~~~~~~~~~

Kristin Dahnert

Source
~~~~~~

Generated dataset
