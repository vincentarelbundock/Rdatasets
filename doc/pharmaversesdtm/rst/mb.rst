== ===============
mb R Documentation
== ===============

Microbiology Specimen
---------------------

Description
~~~~~~~~~~~

A synthetic SDTM MB domain representing microbiology findings and
linkage to MS domain (ms)

Usage
~~~~~

.. code:: R

   mb

Format
~~~~~~

A data frame with 21 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

MBSEQ
   Sequence Number

MBGRPID
   Group ID

MBREFID
   Reference ID

MBLNKGRP
   Link Group ID

MBTESTCD
   Microbiology Test or Finding Short Name

MBTEST
   Microbiology Test or Finding Name

MBTSTDTL
   Measurement, Test or Examination Detail

MBORRES
   Result or Finding in Original Units

MBORRESU
   Original Units

MBRSLSCL
   Result Scale

MBSTRESC
   Result or Finding in Standard Format

MBSTRESN
   Numeric Result/Finding in Standard Units

MBSTRESU
   Standard Units

MBSPEC
   Specimen Material Type

MBLOC
   Specimen Collection Location

MBMETHOD
   Method of Test or Examination

VISITNUM
   Visit Number

MBDTC
   Date/Time of Collection

Details
~~~~~~~

Microbiology Specimen

A synthetic SDTM MB domain representing microbiology findings and
linkage to MS domain (ms)

Contains a set of 6 unique Test Short Names and Test Names:

============ ==================================
**MBTESTCD** **MBTEST**
GMNCOC       Gram Negative Cocci
GNROD        Gram Negative Rods
GPRCOC       Gram Positive Cocci
MCCOLCNT     Colony Count
MCORGIDN     Microbial Organism Identification
MTBCMPLX     Mycobacterium tuberculosis complex
============ ==================================

Source
~~~~~~

`Access the source of the Microbiology Specimen
dataset. <https://github.com/pharmaverse/pharmaversesdtm/blob/main/data/mb.rda>`__
