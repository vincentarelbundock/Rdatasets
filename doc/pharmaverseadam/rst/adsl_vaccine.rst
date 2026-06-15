============ ===============
adsl_vaccine R Documentation
============ ===============

Subject Level Analysis for Vaccine
----------------------------------

Description
~~~~~~~~~~~

Subject Level Analysis for Vaccine

Usage
~~~~~

.. code:: R

   adsl_vaccine

Format
~~~~~~

A data frame with 46 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

SUBJID
   Subject Identifier for the Study

SITEID
   Study Site Identifier

COUNTRY
   Country/Region

RFSTDTC
   Subject Reference Start Date/Time

RFENDTC
   Subject Reference End Date/Time

RFXSTDTC
   Date/Time of First Study Treatment

RFXENDTC
   Date/Time of Last Study Treatment

RFPENDTC
   Date/Time of End of Participation

DTHDTC
   Date/Time of Death

DTHFL
   Subject Death Flag

REGION1
   Geographic Region 1

BRTHDTC
   Date/Time of Birth

DMDTC
   Date/Time of Collection

DMDY
   Study Day of Collection

AGE
   Age

AGEU
   Age Units

AGEGR1
   Pooled Age Group 1

SEX
   Sex

RACE
   Race

RACEGR1
   Pooled Race Group 1

ETHNIC
   Ethnicity

SAFFL
   Safety Population Flag

PPROTFL
   Per-Protocol Population Flag

ARM
   Description of Planned Arm

ARMCD
   Planned Arm Code

ACTARM
   Description of Actual Arm

ACTARMCD
   Actual Arm Code

TRT01P
   Planned Treatment for Period 01

TRT01A
   Actual Treatment for Period 01

TRT02P
   Planned Treatment for Period 02

TRT02A
   Actual Treatment for Period 02

TRTSDT
   Date of First Exposure to Treatment

TRTSDTM
   Datetime of First Exposure to Treatment

TRTEDT
   Date of Last Exposure to Treatment

TRTEDTM
   Datetime of Last Exposure to Treatment

AP01SDT
   Period 01 Start Date

AP01EDT
   Period 01 End Date

AP02SDT
   Period 02 Start Date

AP02EDT
   Period 02 End Date

RFICDTC
   Date/Time of Informed Consent

INVID
   Investigator Identifier

INVNAM
   Investigator Name

VAX01DT
   Vaccination Date 01

VAX02DT
   Vaccination Date 02

Source
~~~~~~

Generated from admiralvaccine package (template ad_adsl.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adsl_vaccine")
