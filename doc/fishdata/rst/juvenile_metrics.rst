.. container::

   .. container::

      ================ ===============
      juvenile_metrics R Documentation
      ================ ===============

      .. rubric:: Juvenile fish metrics data
         :name: juvenile-fish-metrics-data

      .. rubric:: Description
         :name: description

      A dataset containing metrics data for juvenile Galaxis maculatus.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         juvenile_metrics

      .. rubric:: Format
         :name: format

      A dataset containing 496 rows and 8 variables

      fish_code
         Foreign key (matches with 'juveniles')

      standard_length
         standard length of the fish (distance from posterior to caudal
         peduncle), cm

      body_depth
         body depth of the fish at its maximum point, cm

      age
         Age of fish when caught (days)

      birthdate
         Day fish hatched

      growth_rate
         Average daily growth of fish (mm/day)

      growth_rate
         Average daily growth of fish over first 10 days of life
         (mm/day)

      growth_rate
         Average daily growth of fish over last 10 days of life (mm/day)

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(juvenile_metrics)
