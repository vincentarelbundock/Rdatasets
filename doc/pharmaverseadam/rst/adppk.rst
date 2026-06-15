===== ===============
adppk R Documentation
===== ===============

Population Pharmacokinetic
--------------------------

Description
~~~~~~~~~~~

Population Pharmacokinetic

Usage
~~~~~

.. code:: R

   adppk

Format
~~~~~~

A data frame with 61 columns:

PROJID
   Project Identifier

PROJIDN
   Project Identifier (N)

STUDYID
   Study Identifier

STUDYIDN
   Study Identifier (N)

USUBJID
   Unique Subject Identifier

USUBJIDN
   Unique Subject Identifier (N)

SUBJID
   Subject Identifier for the Study

SUBJIDN
   Subject Identifier for the Study (N)

SITEID
   Study Site Identifier

SITEIDN
   Study Site Identifier (N)

RECSEQ
   Record Sequence

AFRLT
   Act. Rel. Time from Analyte First Dose

APRLT
   Actual Rel Time from Previous Dose

NFRLT
   Nom. Rel. Time from Analyte First Dose

NPRLT
   Nominal Rel Time from Previous Dose

EVID
   Event ID

CMT
   Compartment

DV
   Dependent Variable Result

PARAMCD
   Parameter Code

PARAM
   Parameter

PARAMN
   Parameter (N)

ASEQ
   Analysis Sequence Number

AVAL
   Analysis Value

AVALU
   Analysis Value Unit

MDV
   Missing Dependent Variable Result

ALLOQ
   Analysis Lower Limit of Quantitation

BLQFL
   Below Lower Limit of Quant Flag

BLQFN
   Below Lower Limit of Quant Flag (N)

AMT
   Actual Amount of Dose Received (unit)

DOSEA
   Actual Treatment Dose

II
   Dosing Interval (unit)

SS
   Steady State

FORM
   Drug Formulation

FORMN
   Drug Formulation (N)

ROUTE
   Route of Administration

ROUTEN
   Route of Administration (N)

COHORT
   Cohort Subject Enrolled Into

COHORTC
   Description of Planned Arm

UDTC
   Date/Time

WTBL
   Numeric Result/Finding in Standard Units

HTBL
   Numeric Result/Finding in Standard Units

BMIBL
   Baseline Body Mass Index (kg/m2)

BSABL
   Numeric Result/Finding in Standard Units

AGE
   Age

SEX
   Sex

SEXN
   Sex (N)

RACE
   Race

RACEN
   Race (N)

ETHNIC
   Ethnicity

ETHNICN
   Ethnicity (N)

COUNTRY
   Country

COUNTRYL
   Country Name

COUNTRYN
   Country (N)

CREATBL
   Numeric Result/Finding in Standard Units

CRCLBL
   Baseline Creatinine Clearance

EGFRBL
   Age

TBILBL
   Numeric Result/Finding in Standard Units

ASTBL
   Numeric Result/Finding in Standard Units

ALTBL
   Numeric Result/Finding in Standard Units

DOSEP
   Planned Treatment Dose

DVL
   Log DV

Details
~~~~~~~

Contains a set of 2 unique Parameter Codes and Parameters:

=========== ===========================================
**PARAMCD** **PARAM**
DOSE        Xanomeline Patch Dose
XAN         Pharmacokinetic concentration of Xanomeline
=========== ===========================================

Source
~~~~~~

Generated from admiral package (template ad_adppk.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adppk")
