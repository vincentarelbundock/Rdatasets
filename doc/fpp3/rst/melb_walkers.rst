.. container::

   .. container::

      ============ ===============
      melb_walkers R Documentation
      ============ ===============

      .. rubric:: Average daily total pedestrian count in Melbourne
         :name: average-daily-total-pedestrian-count-in-melbourne

      .. rubric:: Description
         :name: description

      Daily average total pedestrian count (across different sensors)
      from 2019-01-01 to 2024-05-29.

      .. rubric:: Format
         :name: format

      Time series of class 'tsibble'

      .. rubric:: Source
         :name: source

      Melbourne Open Data Portal. https://data.melbourne.vic.gov.au

      .. rubric:: Examples
         :name: examples

      .. code:: R

         melb_walkers |> autoplot(Count)
