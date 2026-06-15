== ===============
pp R Documentation
== ===============

Pharmacokinetic Parameters
--------------------------

Description
~~~~~~~~~~~

A SDTM PP dataset simulated by Antonio Rodriguez Contesti

Usage
~~~~~

.. code:: R

   pp

Format
~~~~~~

A data frame with 14 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

PPSEQ
   Sequence Number

PPTESTCD
   Parameter Short Name

PPTEST
   Parameter Name

PPCAT
   Parameter Category

PPORRES
   Result or Finding in Original Units

PPORRESU
   Original Units

PPSTRESC
   Character Result/Finding in Std Format

PPSTRESN
   Numeric Result/Finding in Standard Units

PPSTRESU
   Standard Units

PPSPEC
   Specimen Material Type

PPRFDTC
   Date/Time of Reference Point

Details
~~~~~~~

Pharmacokinetic Parameters

A SDTM PP dataset simulated by Antonio Rodriguez Contesti

Contains a set of 10 unique Test Short Names and Test Names:

============ =============================
**PPTESTCD** **PPTEST**
AUCALL       AUC All
AUCLST       AUC to Last Nonzero Conc
CLST         Last Nonzero Conc
CMAX         Max Conc
LAMZ         Lambda z
LAMZHL       Half-Life Lambda z
LAMZNPT      Number of Points for Lambda z
RCAMINT      Ae
RENALCL      CLR
TMAX         Time of CMAX
============ =============================

Author(s)
~~~~~~~~~

Antonio Rodriguez Contesti

Source
~~~~~~

`Access the source of the Pharmacokinetic Parameters
dataset. <https://github.com/pharmaverse/pharmaversesdtm/blob/main/data/pp.rda>`__
