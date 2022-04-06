.. container::

   ============== ===============
   cancer_in_dogs R Documentation
   ============== ===============

   .. rubric:: Cancer in dogs
      :name: cancer-in-dogs

   .. rubric:: Description
      :name: description

   A study in 1994 examined 491 dogs that had developed cancer and 945
   dogs as a control group to determine whether there is an increased
   risk of cancer in dogs that are exposed to the herbicide
   2,4-Dichlorophenoxyacetic acid (2,4-D).

   .. rubric:: Usage
      :name: usage

   ::

      cancer_in_dogs

   .. rubric:: Format
      :name: format

   A data frame with 1436 observations on the following 2 variables.

   order
      a factor with levels ``2,4-D`` and ``no 2,4-D``

   response
      a factor with levels ``cancer`` and ``no cancer``

   .. rubric:: Source
      :name: source

   Hayes HM, Tarone RE, Cantor KP, Jessen CR, McCurnin DM, and
   Richardson RC. 1991. Case- Control Study of Canine Malignant
   Lymphoma: Positive Association With Dog Owner's Use of 2, 4-
   Dichlorophenoxyacetic Acid Herbicides. Journal of the National Cancer
   Institute 83(17):1226-1231.

   .. rubric:: Examples
      :name: examples

   ::


      table(cancer_in_dogs)
