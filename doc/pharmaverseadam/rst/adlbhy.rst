====== ===============
adlbhy R Documentation
====== ===============

Analysis of Lab Hy's Law
------------------------

Description
~~~~~~~~~~~

Analysis of Lab Hy's Law

Usage
~~~~~

.. code:: R

   adlbhy

Format
~~~~~~

A data frame with 14 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

TRT01A
   Actual Treatment for Period 01

ADT
   Analysis Date

ADY
   Analysis Relative Day

AVISIT
   Analysis Visit

PARAM
   Parameter

PARAMCD
   Parameter Code

AVAL
   Analysis Value

AVALC
   Analysis Value (C)

CRIT1
   Analysis Criterion 1

CRIT1FL
   Criterion 1 Evaluation Result Flag

ANRHI
   Analysis Normal Range Upper Limit

LBSEQ
   Sequence Number

Details
~~~~~~~

Contains a set of 4 unique Parameter Codes and Parameters:

=========== ==================================
**PARAMCD** **PARAM**
ALT         Alanine Aminotransferase (U/L)
AST         Aspartate Aminotransferase (U/L)
BILI        Bilirubin (umol/L)
HYSLAW      ALT/AST >= 3xULN and BILI >= 2xULN
=========== ==================================

Source
~~~~~~

Generated from admiral package (template ad_adlbhy.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adlbhy")
