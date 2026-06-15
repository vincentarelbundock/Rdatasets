============ ===============
melb_walkers R Documentation
============ ===============

Average daily total pedestrian count in Melbourne
-------------------------------------------------

Description
~~~~~~~~~~~

Daily average total pedestrian count (across different sensors) from
2019-01-01 to 2024-05-29.

Format
~~~~~~

Time series of class 'tsibble'

Source
~~~~~~

Melbourne Open Data Portal. https://data.melbourne.vic.gov.au

Examples
~~~~~~~~

.. code:: R

   melb_walkers |> autoplot(Count)
