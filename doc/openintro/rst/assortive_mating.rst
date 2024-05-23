.. container::

   .. container::

      ================ ===============
      assortive_mating R Documentation
      ================ ===============

      .. rubric:: Eye color of couples
         :name: eye-color-of-couples

      .. rubric:: Description
         :name: description

      Colors of the eye colors of male and female partners.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         assortative_mating

      .. rubric:: Format
         :name: format

      A data frame with 204 observations on the following 2 variables.

      self_male
         a factor with levels ``blue``, ``brown``, and ``green``

      partner_female
         a factor with ``blue``, ``brown``, and ``green``

      .. rubric:: Source
         :name: source

      B. Laeng et al. Why do blue-eyed men prefer women with the same
      eye color? In: Behavioral Ecology and Sociobiology 61.3 (2007),
      pp. 371-384.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(assortive_mating)
         table(assortive_mating)
