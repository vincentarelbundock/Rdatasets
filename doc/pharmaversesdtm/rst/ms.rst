== ===============
ms R Documentation
== ===============

Microbiology Susceptibility
---------------------------

Description
~~~~~~~~~~~

A synthetic SDTM MS domain with susceptibility results and linkage to MB
domain (mb)

Usage
~~~~~

.. code:: R

   ms

Format
~~~~~~

A data frame with 23 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

MSSEQ
   Sequence Number

MSREFID
   Reference ID

NHOID
   Non-host Organism ID

MSGRPID
   Group ID

MSLNKID
   Link ID

MSTESTCD
   Short Name of Assessment

MSTEST
   Name of Assessment

MSAGENT
   Agent Name

MSCONC
   Agent Concentration

MSCONCU
   Agent Concentration Units

MSORRES
   Result or Finding in Original Units

MSORRESU
   Original Units

MSSTRESC
   Result or Finding in Standard Format

MSSTRESN
   Numeric Result/Finding in Standard Units

MSSTRESU
   Standard Units

MSSPEC
   Specimen Material Type

MSLOC
   Location Used for the Measurement

MSMETHOD
   Method of Test or Examination

VISITNUM
   Visit Number

MSDTC
   Date/Time of Collection

Details
~~~~~~~

Microbiology Susceptibility

A synthetic SDTM MS domain with susceptibility results and linkage to MB
domain (mb)

Contains a set of 3 unique Test Short Names and Test Names:

============ ==================================
**MSTESTCD** **MSTEST**
DIAZOINH     Diameter of the Zone of Inhibition
MIC          Minimum Inhibitory Concentration
MICROSUS     Microbial Susceptibility
============ ==================================

Source
~~~~~~

`Access the source of the Microbiology Susceptibility
dataset. <https://github.com/pharmaverse/pharmaversesdtm/blob/main/data/ms.rda>`__
