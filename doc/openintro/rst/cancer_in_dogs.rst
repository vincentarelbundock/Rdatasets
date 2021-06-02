============== ===============
cancer_in_dogs R Documentation
============== ===============

Cancer in dogs
--------------

Description
~~~~~~~~~~~

A study in 1994 examined 491 dogs that had developed cancer and 945 dogs
as a control group to determine whether there is an increased risk of
cancer in dogs that are exposed to the herbicide
2,4-Dichlorophenoxyacetic acid (2,4-D).

Usage
~~~~~

::

   cancer_in_dogs

Format
~~~~~~

A data frame with 1436 observations on the following 2 variables.

order
   a factor with levels ``2,4-D`` and ``no 2,4-D``

response
   a factor with levels ``cancer`` and ``no cancer``

Source
~~~~~~

Hayes HM, Tarone RE, Cantor KP, Jessen CR, McCurnin DM, and Richardson
RC. 1991. Case- Control Study of Canine Malignant Lymphoma: Positive
Association With Dog Owner's Use of 2, 4- Dichlorophenoxyacetic Acid
Herbicides. Journal of the National Cancer Institute 83(17):1226-1231.

Examples
~~~~~~~~

::


   table(cancer_in_dogs)

