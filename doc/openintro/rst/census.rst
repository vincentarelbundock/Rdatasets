.. container::

   ====== ===============
   census R Documentation
   ====== ===============

   .. rubric:: Random sample of 2000 U.S. Census Data
      :name: random-sample-of-2000-u.s.-census-data

   .. rubric:: Description
      :name: description

   A random sample of 500 observations from the 2000 U.S. Census Data.

   .. rubric:: Usage
      :name: usage

   ::

      census

   .. rubric:: Format
      :name: format

   A data frame with 500 observations on the following 8 variables.

   census_year
      Census Year.

   state_fips_code
      Name of state.

   total_family_income
      Total family income (in U.S. dollars).

   age
      Age.

   sex
      Sex with levels ``Female`` and ``Male``.

   race_general
      Race with levels ``American Indian or Alaska Native``, ``Black``,
      ``Chinese``, ``Japanese``, ``Other Asian or Pacific Islander``,
      ``Two major races``, ``White`` and ``Other``.

   marital_status
      Marital status with levels ``Divorced``,
      ``Married/spouse absent``, ``Married/spouse present``,
      ``Never married/single``, ``Separated`` and ``Widowed``.

   total_personal_income
      Total personal income (in U.S. dollars).

   .. rubric:: Source
      :name: source

   https://data.census.gov/cedsci

   .. rubric:: Examples
      :name: examples

   ::

      library(dplyr)
      library(ggplot2)

      census %>%
        filter(total_family_income > 0) %>%
        ggplot(aes(x = total_family_income)) +
        geom_histogram(binwidth = 25000)
