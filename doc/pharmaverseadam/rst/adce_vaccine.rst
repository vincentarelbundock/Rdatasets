============ ===============
adce_vaccine R Documentation
============ ===============

Clinical Events Analysis for Vaccine
------------------------------------

Description
~~~~~~~~~~~

Clinical Events Analysis for Vaccine

Usage
~~~~~

.. code:: R

   adce_vaccine

Format
~~~~~~

A data frame with 56 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

SUBJID
   Subject Identifier for the Study

SITEID
   Study Site Identifier

COUNTRY
   Country

DOMAIN
   Domain Abbreviation

ASEQ
   Analysis Sequence Number

AGE
   Age

AGEU
   Age Units

SEX
   Sex

RACE
   Race

ETHNIC
   Ethnicity

TRT01P
   Planned Treatment for Period 01

TRT01A
   Actual Treatment for Period 01

TRTSDT
   Date of First Exposure to Treatment

TRTEDT
   Date of Last Exposure to Treatment

APERSDT
   Period Start Date

APEREDT
   Period End Date

APERSTDY
   Analysis Sub-period Start Relative Day

CESEQ
   Sequence Number

CETERM
   Reported Term for the Clinical Event

CEDECOD
   Dictionary-Derived Term

CECAT
   Category for the Clinical Event

CESCAT
   Subcategory for the Clinical Event

CESTDTC
   Start Date/Time of Clinical Event

ASTDT
   Analysis Start Date

CEENDTC
   End Date/Time of Clinical Event

AENDT
   Analysis End Date

ASTDY
   Analysis Start Relative Day

AENDY
   Analysis End Relative Day

ADURN
   Analysis Duration (N)

ADURU
   Analysis Duration Units

CEDUR
   Duration of Clinical Event

APERIOD
   Period

CEOCCUR
   Clinical Event Occurrence

CEPRESP
   Clinical Event Pre-specified

AOCC01FL
   Event Occurrence Flag

ASEV
   Analysis Severity/Intensity

ASEVN
   Analysis Severity/Intensity (N)

AREL
   Analysis Causality

CELNKID
   Link ID

CELNKGRP
   Link Group ID

CELAT
   Laterality

CELOC
   Location of Event

CESEV
   Severity/Intensity

CEREL
   Causality

CEOUT
   Outcome of Event

EPOCH
   Epoch

CEDTC
   Date/Time of Event Collection

CETPT
   Planned Time Point Name

CETPTNUM
   Planned Time Point Number

CETPTREF
   Time Point Reference

CERFTDTC
   Date/Time of Reference Time Point

CEEVINTX
   Evaluation Interval Text

CESTAT
   Completion Status

CEREASND
   Reason Clinical Event Not Collected

Source
~~~~~~

Generated from admiralvaccine package (template ad_adce.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adce_vaccine")
