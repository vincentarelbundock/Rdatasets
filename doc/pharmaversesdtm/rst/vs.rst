== ===============
vs R Documentation
== ===============

Vital Signs
-----------

Description
~~~~~~~~~~~

A SDTM VS dataset from the CDISC pilot project

Usage
~~~~~

.. code:: R

   vs

Format
~~~~~~

A data frame with 24 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

VSSEQ
   Sequence Number

VSTESTCD
   Vital Signs Test Short Name

VSTEST
   Vital Signs Test Name

VSPOS
   Vital Signs Position of Subject

VSORRES
   Result or Finding in Original Units

VSORRESU
   Original Units

VSSTRESC
   Character Result/Finding in Std Format

VSSTRESN
   Numeric Result/Finding in Standard Units

VSSTRESU
   Standard Units

VSSTAT
   Completion Status

VSLOC
   Location of Vital Signs Measurement

VSBLFL
   Baseline Flag

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

VSDTC
   Date/Time of Measurements

VSDY
   Study Day of Vital Signs

VSTPT
   Planned Time Point Name

VSTPTNUM
   Planned Time Point Number

VSELTM
   Planned Elapsed Time from Time Point Ref

VSTPTREF
   Time Point Reference

Details
~~~~~~~

Vital Signs

A SDTM VS dataset from the CDISC pilot project

Contains a set of 6 unique Test Short Names and Test Names:

============ ========================
**VSTESTCD** **VSTEST**
DIABP        Diastolic Blood Pressure
HEIGHT       Height
PULSE        Pulse Rate
SYSBP        Systolic Blood Pressure
TEMP         Temperature
WEIGHT       Weight
============ ========================

Source
~~~~~~

Generated dataset.
