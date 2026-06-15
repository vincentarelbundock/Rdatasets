============== ===============
adface_vaccine R Documentation
============== ===============

Findings About Clinical Events Analysis
---------------------------------------

Description
~~~~~~~~~~~

Findings About Clinical Events Analysis

Usage
~~~~~

.. code:: R

   adface_vaccine

Format
~~~~~~

A data frame with 61 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

SUBJID
   Subject Identifier for the Study

SITEID
   Study Site Identifier

AGE
   Age

AGEU
   Age Units

SEX
   Sex

RACE
   Race

SAFFL
   Safety Population Flag

ARM
   Description of Planned Arm

ARMCD
   Planned Arm Code

ACTARM
   Description of Actual Arm

ACTARMCD
   Actual Arm Code

TRTP
   Planned Treatment

TRTA
   Actual Treatment

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

APERSDT
   Period Start Date

APEREDT
   Period End Date

ADT
   Analysis Date

ADTM
   Analysis Datetime

ADY
   Analysis Relative Day

ATPT
   Analysis Timepoint

ATPTN
   Analysis Timepoint (N)

ATPTREF
   Analysis Timepoint Reference

APERIOD
   Period

PARAM
   Parameter

PARAMCD
   Parameter Code

PARAMN
   Parameter (N)

PARCAT1
   Parameter Category 1

PARCAT2
   Parameter Category 2

AVAL
   Analysis Value

AVALC
   Analysis Value (C)

ANL01FL
   Analysis Flag 01

ANL02FL
   Analysis Flag 02

ANL03FL
   Analysis Flag 03

FATEST
   Findings About Test Name

FALNKID
   Link ID

FALNKGRP
   Link Group ID

FATESTCD
   Findings About Test Short Name

FAOBJ
   Object of the Observation

FASTAT
   Completion Status

FAREASND
   Reason Not Performed

FAEVAL
   Evaluator

EPOCH
   Epoch

FAEVINTX
   Evaluation Interval Text

EXDOSE
   Dose

EXTRT
   Name of Treatment

EXSTDTC
   Start Date/Time of Treatment

EXENDTC
   End Date/Time of Treatment

FAORRES
   Result or Finding in Original Units

VAX01DT
   Vaccination Date 01

VAX02DT
   Vaccination Date 02

EVENTFL
   Event Value Flag

EVENTDFL
   Day Event Value Flag

Details
~~~~~~~

Contains a set of 30 unique Parameter Codes and Parameters:

+-------------+--------------------------------------------------------+
| **PARAMCD** | **PARAM**                                              |
+-------------+--------------------------------------------------------+
| DIARE       | Redness diameter deltoid muscle left                   |
+-------------+--------------------------------------------------------+
| DIASWEL     | Swelling diameter deltoid muscle left                  |
+-------------+--------------------------------------------------------+
| MAXREDN     | Redness maximum severity deltoid muscle left           |
+-------------+--------------------------------------------------------+
| MAXSFAT     | Fatigue maximum severity                               |
+-------------+--------------------------------------------------------+
| MAXSHEA     | Headache maximum severity                              |
+-------------+--------------------------------------------------------+
| MAXSPIS     | Pain at injection site maximum severity deltoid muscle |
|             | left                                                   |
+-------------+--------------------------------------------------------+
| MAXSWEL     | Swelling maximum severity deltoid muscle left          |
+-------------+--------------------------------------------------------+
| MAXTEMP     | Fever maximum temperature                              |
+-------------+--------------------------------------------------------+
| MDIRE       | Redness maximum diameter deltoid muscle left           |
+-------------+--------------------------------------------------------+
| MDISW       | Swelling maximum diameter deltoid muscle left          |
+-------------+--------------------------------------------------------+
| MSEVNWJP    | New or worsened joint pain maximum severity            |
+-------------+--------------------------------------------------------+
| MSEVNWMP    | New or worsened muscle pain maximum severity           |
+-------------+--------------------------------------------------------+
| OCCHILLS    | Chills occurrence indicator                            |
+-------------+--------------------------------------------------------+
| OCCNWJP     | New or worsened joint pain occurrence indicator        |
+-------------+--------------------------------------------------------+
| OCCNWMP     | New or worsened muscle pain occurrence indicator       |
+-------------+--------------------------------------------------------+
| OCCVOM      | Vomiting occurrence indicator                          |
+-------------+--------------------------------------------------------+
| OCDIAR      | Diarrhea occurrence indicator                          |
+-------------+--------------------------------------------------------+
| OCFATIG     | Fatigue occurrence indicator                           |
+-------------+--------------------------------------------------------+
| OCFEVER     | Fever occurrence indicator                             |
+-------------+--------------------------------------------------------+
| OCHEAD      | Headache occurrence indicator                          |
+-------------+--------------------------------------------------------+
| OCINS       | Swelling occurrence indicator deltoid muscle left      |
+-------------+--------------------------------------------------------+
| OCISR       | Redness occurrence indicator deltoid muscle left       |
+-------------+--------------------------------------------------------+
| OCPIS       | Pain at injection site occurrence indicator deltoid    |
|             | muscle left                                            |
+-------------+--------------------------------------------------------+
| SEVFAT      | Fatigue severity/intensity                             |
+-------------+--------------------------------------------------------+
| SEVHEAD     | Headache severity/intensity                            |
+-------------+--------------------------------------------------------+
| SEVNWJP     | New or worsened joint pain severity/intensity          |
+-------------+--------------------------------------------------------+
| SEVNWMP     | New or worsened muscle pain severity/intensity         |
+-------------+--------------------------------------------------------+
| SEVPIS      | Pain at injection site severity/intensity deltoid      |
|             | muscle left                                            |
+-------------+--------------------------------------------------------+
| SEVREDN     | Redness severity/intensity deltoid muscle left         |
+-------------+--------------------------------------------------------+
| SEVSWEL     | Swelling severity/intensity deltoid muscle left        |
+-------------+--------------------------------------------------------+

Source
~~~~~~

Generated from admiralvaccine package (template ad_adface.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adface_vaccine")
