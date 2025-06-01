.. container::

   .. container::

      ====== ===============
      adults R Documentation
      ====== ===============

      .. rubric:: Base table of adult fish sample sites and dates.
         :name: base-table-of-adult-fish-sample-sites-and-dates.

      .. rubric:: Description
         :name: description

      A dataset containing base location and time catch information for
      adult Galaxis maculatus.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         adults

      .. rubric:: Format
         :name: format

      A dataset containing 48 rows and 4 variables

      fish_code
         Primary key, uniquely identifies a fish

      site
         Site where fish was caught

      day
         Day group fish was caught on (H1 = 1st day fishing, H3 = 3rd
         day fishing). Used for by-day grouping analysis. For actual
         catch date see 'catch_date'

      catch_date
         Date that the fish was caught on

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(adults)
