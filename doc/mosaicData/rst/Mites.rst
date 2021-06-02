===== ===============
Mites R Documentation
===== ===============

Mites and Wilt Disease
----------------------

Description
~~~~~~~~~~~

Data from an experiment to test whether exposure to mites protects
against Wilt Disease in cotton plants.

Usage
~~~~~

::

   data(Mites)

Format
~~~~~~

A data frame with 47 observations on the following variables.

-  ``treatment`` a factor with levels ``mites`` and ``no mites``

-  ``outcome`` a factor with levels ``wilt`` and ``no wilt``

Details
~~~~~~~

Researchers suspected that attack of a plant by one organism induced
resistance to subsequent attack by a different organism. Individually
potted cotton plants were randomly allocated to two groups: infestation
by spider mites or no infestation. After two weeks the mites were
dutifully removed by a conscientious research assistant, and both groups
were inoculated with Verticillium, a fungus that causes Wilt disease.
More information can be found at
https://www.causeweb.org/cause/webinar/activity/2010-01/.

Source
~~~~~~

Statistics for the Life Sciences, Third Edition; Myra Samuels & Jeffrey
Witmer (2003), page 409.

Examples
~~~~~~~~

::

   data(Mites)
   if (require(mosaic)) {
     tally(~ treatment + outcome, data=Mites)
     tally(~ outcome | treatment, format="percent", data=Mites)
   }

