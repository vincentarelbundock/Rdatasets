.. container::

   ============== ===============
   husbands_wives R Documentation
   ============== ===============

   .. rubric:: Great Britain: husband and wife pairs
      :name: great-britain-husband-and-wife-pairs

   .. rubric:: Description
      :name: description

   The Great Britain Office of Population Census and Surveys once
   collected data on a random sample of 170 married couples in Britain,
   recording the age (in years) and heights of the husbands and wives.

   .. rubric:: Usage
      :name: usage

   ::

      husbands_wives

   .. rubric:: Format
      :name: format

   A data frame with 199 observations on the following 8 variables.

   age_husband
      Age of husband.

   age_wife
      Age of wife.

   ht_husband
      Height of husband (mm).

   ht_wife
      Height of wife (mm).

   age_husb_at_marriage
      Age of husband at the time they married.

   age_wife_at_marriage
      Age of wife at the time they married.

   years_married
      Number of years married.

   .. rubric:: Source
      :name: source

   Hand DJ. 1994. A handbook of small data sets. Chapman & Hall/CRC.

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)

      ggplot(husbands_wives, aes(x = ht_husband, y = ht_wife)) +
        geom_point()
