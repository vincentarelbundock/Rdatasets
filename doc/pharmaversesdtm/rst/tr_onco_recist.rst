============== ===============
tr_onco_recist R Documentation
============== ===============

Tumor Results (RECIST 1.1) for Oncology
---------------------------------------

Description
~~~~~~~~~~~

A SDTM TR dataset using RECIST 1.1 intended for examples of ADaM dataset
creation

Usage
~~~~~

.. code:: R

   tr_onco_recist

Format
~~~~~~

A data frame with 19 columns:

DOMAIN
   Domain Abbreviation

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

TRGRPID
   Group ID

TRLNKID
   Link ID

TRTESTCD
   Tumor/Lesion Assessment Short Name

TRTEST
   Tumor/Lesion Assessment Test Name

TRORRES
   Result or Finding in Original Units

TRORRESU
   Original Units

TRSTRESC
   Character Result/Finding in Std Format

TRSTRESN
   Numeric Result/Finding in Standard Units

TRSTRESU
   Standard Units

VISITNUM
   Visit Number

VISIT
   Visit Name

TREVAL
   Evaluator

TREVALID
   Evaluator Identifier

TRACPTFL
   Accepted Record Flag

TRDTC
   Date/Time of Tumor/Lesion Measurement

TRSEQ
   Sequence Number

Details
~~~~~~~

Tumor Results (RECIST 1.1) for Oncology

A SDTM TR dataset using RECIST 1.1 intended for examples of ADaM dataset
creation

Contains a set of 3 unique Test Short Names and Test Names:

============ =====================
**TRTESTCD** **TRTEST**
LDIAM        Longest Diameter
LPERP        Longest Perpendicular
TUMSTATE     Tumor State
============ =====================

Author(s)
~~~~~~~~~

Stefan Bundfuss

Source
~~~~~~

Generated dataset.
