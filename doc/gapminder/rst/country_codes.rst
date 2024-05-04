.. container::

   .. container::

      ============= ===============
      country_codes R Documentation
      ============= ===============

      .. rubric:: Country codes
         :name: country-codes

      .. rubric:: Description
         :name: description

      Country codes

      .. rubric:: Usage
         :name: usage

      ::

         country_codes

      .. rubric:: Format
         :name: format

      Data frame of Gapminder country names and ISO 3166-1 country
      codes:

      country
         Country name.

      iso_alpha
         The 3-letter `ISO 3166-1
         alpha-3 <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3>`__
         code.

      iso_num
         The 3-digit `ISO 3166-1
         numeric-3 <https://en.wikipedia.org/wiki/ISO_3166-1_numeric>`__
         code.

      Also includes the countries covered by the supplemental data frame
      ``gapminder_unfiltered``.

      .. rubric:: Examples
         :name: examples

      ::

         if (require("dplyr")) {
           gapminder %>%
             filter(year == 2007, country %in% c("Kenya", "Peru", "Syria")) %>%
             select(country, continent) %>%
             left_join(country_codes)
         }
