.. container::

   .. container::

      ========= ===============
      juveniles R Documentation
      ========= ===============

      .. rubric:: Base table of juvenile fish sample sites and dates.
         :name: base-table-of-juvenile-fish-sample-sites-and-dates.

      .. rubric:: Description
         :name: description

      A dataset containing base location and time catch information for
      juvenile Galaxis maculatus.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         juveniles

      .. rubric:: Format
         :name: format

      A dataset containing 496 rows and 7 variables

      fish_code
         Primary key, uniquely identifies each fish

      fish
         Alternate key

      otolith_code
         Alternate key

      site
         Site that fish was caught on

      day
         Day group that the fish was collected on (1 = 1st fishing day,
         5 = 5th fishing day). For exact catch date, see 'catch_date'

      month
         Month that the fish was collected on

      catch_date
         Day that fish was caught on

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(juveniles)
