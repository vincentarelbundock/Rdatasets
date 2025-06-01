.. container::

   .. container::

      =============== ===============
      juvenile_growth R Documentation
      =============== ===============

      .. rubric:: Growth data of juvenile fish
         :name: growth-data-of-juvenile-fish

      .. rubric:: Description
         :name: description

      A dataset containing daily growth data for juvenile Galaxis
      maculatus.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         juvenile_growth

      .. rubric:: Format
         :name: format

      A dataset containing 87581 rows and 5 variables

      fish_code
         Foreign key, links with 'juveniles'

      otolith_code
         Alternate key

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

         data(juvenile_growth)
