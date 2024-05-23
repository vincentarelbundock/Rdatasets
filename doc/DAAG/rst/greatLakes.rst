.. container::

   .. container::

      ========== ===============
      greatLakes R Documentation
      ========== ===============

      .. rubric:: Yearly averages of Great Lake heights: 1918 - 2009
         :name: yearly-averages-of-great-lake-heights-1918---2009

      .. rubric:: Description
         :name: description

      Heights, stored as a multivariate time series, are for the lakes
      Erie, Michigan/Huron, Ontario and St Clair

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(greatLakes)

      .. rubric:: Format
         :name: format

      The format is: mts [1:92, 1:4] 174 174 174 174 174 ... - attr(\*,
      "dimnames")=List of 2 ..$ : NULL ..$ : chr [1:4] "Erie"
      "michHuron" "Ontario" "StClair" - attr(\*, "tsp")= num [1:3] 1918
      2009 1 - attr(\*, "class")= chr [1:2] "mts" "ts"

      .. rubric:: Details
         :name: details

      For more details, go to the website that is the source of the
      data.

      .. rubric:: Source
         :name: source

      https://www.lre.usace.army.mil/Missions/Great-Lakes-Information/Great-Lakes-Information-2/Water-Level-Data/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(greatLakes)
         plot(greatLakes)
         ## maybe str(greatLakes)
