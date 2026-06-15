============= ===============
rs_onco_ca125 R Documentation
============= ===============

Disease Response (GCIG)
-----------------------

Description
~~~~~~~~~~~

A SDTM RS dataset using GCIG criteria. The dataset contains just a few
patients. It is intended for vignettes and examples of ADaM dataset
creation.

Usage
~~~~~

.. code:: R

   rs_onco_ca125

Format
~~~~~~

A data frame with 13 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

RSSEQ
   Sequence Number

RSTESTCD
   Assessment Short Name

RSTEST
   Assessment Name

RSCAT
   Category for Assessment

RSORRES
   Result or Finding in Original Units

RSSTRESC
   Character Result/Finding in Std Format

RSEVAL
   Evaluator

VISITNUM
   Visit Number

VISIT
   Visit Name

RSDTC
   Date/Time of Assessment

Details
~~~~~~~

Disease Response (GCIG)

A SDTM RS dataset using GCIG criteria. The dataset contains just a few
patients. It is intended for vignettes and examples of ADaM dataset
creation.

Contains a set of 1 unique Test Short Name and Test Name:

============ ================
**RSTESTCD** **RSTEST**
OVRLRESP     Overall Response
============ ================

Author(s)
~~~~~~~~~

Vinh Nguyen

Source
~~~~~~

Generated dataset
(`rs_supprs_onco_ca125.R <https://github.com/pharmaverse/pharmaversesdtm/blob/main/data-raw/rs_supprs_onco_ca125.R>`__)
