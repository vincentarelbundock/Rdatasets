== ===============
lb R Documentation
== ===============

Laboratory Measurements
-----------------------

Description
~~~~~~~~~~~

An updated SDTM LB dataset that uses data from the CDISC pilot project

Usage
~~~~~

.. code:: R

   lb

Format
~~~~~~

A data frame with 23 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

LBSEQ
   Sequence Number

LBTESTCD
   Lab Test or Examination Short Name

LBTEST
   Lab Test or Examination Name

LBCAT
   Category for Lab Test

LBORRES
   Result or Finding in Original Units

LBORRESU
   Original Units

LBORNRLO
   Reference Range Lower Limit in Orig Unit

LBORNRHI
   Reference Range Upper Limit in Orig Unit

LBSTRESC
   Character Result/Finding in Std Format

LBSTRESN
   Numeric Result/Finding in Standard Units

LBSTRESU
   Standard Units

LBSTNRLO
   Reference Range Lower Limit-Std Units

LBSTNRHI
   Reference Range Upper Limit-Std Units

LBNRIND
   Reference Range Indicator

LBBLFL
   Baseline Flag

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

LBDTC
   Date/Time of Specimen Collection

LBDY
   Study Day of Specimen Collection

Details
~~~~~~~

Laboratory Measurements

An updated SDTM LB dataset that uses data from the CDISC pilot project

Contains a set of 47 unique Test Short Names and Test Names:

============ =======================================
**LBTESTCD** **LBTEST**
ALB          Albumin
ALP          Alkaline Phosphatase
ALT          Alanine Aminotransferase
ANISO        Anisocytes
AST          Aspartate Aminotransferase
BASO         Basophils
BASOLE       Basophils/Leukocytes
BILI         Bilirubin
BUN          Blood Urea Nitrogen
CA           Calcium
CHOL         Cholesterol
CK           Creatine Kinase
CL           Chloride
COLOR        Color
CREAT        Creatinine
EOS          Eosinophils
EOSLE        Eosinophils/Leukocytes
GGT          Gamma Glutamyl Transferase
GLUC         Glucose
HBA1C        Hemoglobin A1C
HCT          Hematocrit
HGB          Hemoglobin
K            Potassium
KETONES      Ketones
LYM          Lymphocytes
LYMLE        Lymphocytes/Leukocytes
MACROCY      Macrocytes
MCH          Ery. Mean Corpuscular Hemoglobin
MCHC         Ery. Mean Corpuscular HGB Concentration
MCV          Ery. Mean Corpuscular Volume
MICROCY      Microcytes
MONO         Monocytes
MONOLE       Monocytes/Leukocytes
PH           pH
PHOS         Phosphate
PLAT         Platelet
POIKILO      Poikilocytes
POLYCHR      Polychromasia
PROT         Protein
RBC          Erythrocytes
SODIUM       Sodium
SPGRAV       Specific Gravity
TSH          Thyrotropin
URATE        Urate
UROBIL       Urobilinogen
VITB12       Vitamin B12
WBC          Leukocytes
============ =======================================

Author(s)
~~~~~~~~~

Annie Yang

Source
~~~~~~

`Access the source of the Laboratory Measurements
dataset. <https://github.com/pharmaverse/pharmaversesdtm/blob/main/data/lb.rda>`__
