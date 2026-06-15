============ ===============
rs_onco_imwg R Documentation
============ ===============

Disease Response (IMWG)
-----------------------

Description
~~~~~~~~~~~

A SDTM RS dataset using IMWG criteria intended for examples of ADaM
dataset creation

Usage
~~~~~

.. code:: R

   rs_onco_imwg

Format
~~~~~~

A data frame with 17 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

RSSEQ
   Sequence Number

RSLNKGRP
   Link Group ID

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

RSSTAT
   Completion Status

RSREASND
   Reason Not Done

RSEVAL
   Evaluator

VISITNUM
   Visit Number

VISIT
   Visit Name

RSDTC
   Date/Time of Assessment

RSDY
   Study Day of Assessment

Details
~~~~~~~

Disease Response (IMWG)

A SDTM RS dataset using IMWG criteria intended for examples of ADaM
dataset creation

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

Derived from tr_onco_recist
