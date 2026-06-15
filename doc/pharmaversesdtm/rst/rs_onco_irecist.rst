=============== ===============
rs_onco_irecist R Documentation
=============== ===============

Disease Response (iRECIST) for Oncology
---------------------------------------

Description
~~~~~~~~~~~

A SDTM RS dataset using iRECIST intended for examples of ADaM dataset
creation

Usage
~~~~~

.. code:: R

   rs_onco_irecist

Format
~~~~~~

A data frame with 19 columns:

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

RSEVALID
   Evaluator Identifier

RSACPTFL
   Accepted Record Flag

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

Disease Response (iRECIST) for Oncology

A SDTM RS dataset using iRECIST intended for examples of ADaM dataset
creation

Contains a set of 6 unique Test Short Names and Test Names:

============ =================================
**RSTESTCD** **RSTEST**
IRECLIND     Last iRECIST Assessment Indicator
NEWLIND      New Lesion Indicator
NEWLPROG     New Lesion Progression
NTRGRESP     Non-target Response
OVRLRESP     Overall Response
TRGRESP      Target Response
============ =================================

Author(s)
~~~~~~~~~

Rohan Thampi

Source
~~~~~~

Generated dataset.
