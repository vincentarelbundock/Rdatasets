========= ===============
qs_ophtha R Documentation
========= ===============

Questionnaire for Ophthalmology
-------------------------------

Description
~~~~~~~~~~~

An example Questionnaires SDTM dataset with ophthalmology-specific
questionnaire of NEI VFQ-25

Usage
~~~~~

.. code:: R

   qs_ophtha

Format
~~~~~~

A data frame with 20 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

QSSEQ
   Sequence Number

QSTESTCD
   Question Short Name

QSTEST
   Question Name

QSCAT
   Category of Question

QSSCAT
   Subcategory for Question

QSORRES
   Finding in Original Units

QSORRESU
   Original Units

QSSTRESC
   Character Result/Finding in Std Format

QSSTRESN
   Numeric Finding in Standard Units

QSSTRESU
   Standard Units

QSBLFL
   Baseline Flag

QSDRVFL
   Derived Flag

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

QSDTC
   Date/Time of Finding

QSDY
   Study Day of Finding

Details
~~~~~~~

Questionnaire for Ophthalmology

An example Questionnaires SDTM dataset with ophthalmology-specific
questionnaire of NEI VFQ-25

Contains a set of 29 unique Test Short Names and Test Names:

============ ==========================================
**QSTESTCD** **QSTEST**
VFQ101       Your Overall Health Is
VFQ102       Eyesight Using Both Eyes Is
VFQ103       How Often You Worry About Eyesight
VFQ104       How Often Pain in and Around Eyes
VFQ105       Difficulty Reading Newspapers
VFQ106       Difficulty Doing Work/Hobbies
VFQ107       Difficulty Finding on Crowded Shelf
VFQ108       Difficulty Reading Street Signs
VFQ109       Difficulty Going Down Step at Night
VFQ110       Difficulty Noticing Objects to Side
VFQ111       Difficulty Seeing How People React
VFQ112       Difficulty Picking Out Own Clothes
VFQ113       Difficulty Visiting With People
VFQ114       Difficulty Going Out to See Movies
VFQ115       Are You Currently Driving
VFQ115C      Difficulty Driving During Daytime
VFQ116       Difficulty Driving at Night
VFQ116A      Driving in Difficult Conditions
VFQ119       Eye Pain Keep You From Doing What You Like
VFQ120       I Stay Home Most of the Time
VFQ121       I Feel Frustrated a Lot of the Time
VFQ124       I Need a Lot of Help From Others
VFQ125       Worry I'll Do Embarrassing Things
VFQ1A03      Difficulty Reading Small Print
VFQ1A04      Difficulty Figure Out Bill Accuracy
VFQ1A05      Difficulty Shaving or Styling Hair
VFQ1A06      Difficulty Recognizing People
VFQ1A07      Difficulty Taking Part in Sports
VFQ1A08      Difficulty Seeing Programs on TV
============ ==========================================

Source
~~~~~~

Constructed using qs from the pharmaversesdtm package
