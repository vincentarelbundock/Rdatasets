.. container::

   .. container::

      ============ ===============
      adult_growth R Documentation
      ============ ===============

      .. rubric:: Growth data of adult fish
         :name: growth-data-of-adult-fish

      .. rubric:: Description
         :name: description

      A dataset containing daily age and growth data for adult Galaxis
      maculatus.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         adult_growth

      .. rubric:: Format
         :name: format

      A dataset containing 16795 rows and 4 variables

      fish_code
         Foreign key, matches to 'adults'. Identifies the fish being
         measured.

      period
         a count of each otolith increment. Counts a day in the fishes
         life

      position
         the distance of the increment from the centre of the otolith

      distance
         the distance of the increment from the previous increment

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(adult_growth)
