.. container::

   .. container::

      ====== ===============
      SnowGR R Documentation
      ====== ===============

      .. rubric:: Snowfall data for Grand Rapids, MI
         :name: snowfall-data-for-grand-rapids-mi

      .. rubric:: Description
         :name: description

      Official snowfall data by month and season for Grand Rapids, MI,
      going back to 1893.

      .. rubric:: Usage
         :name: usage

      ::

         data(SnowGR)

      .. rubric:: Format
         :name: format

      A data frame with 119 observations of the following variables.

      ``SeasonStart``
         Year in which season started (July is start of season)

      ``SeasonEnd``
         Year in which season ended (June is end of season)

      ``Jul``
         Inches of snow in July

      ``Aug``
         Inches of snow in August

      ``Sep``
         Inches of snow in September

      ``Oct``
         Inches of snow in October

      ``Nov``
         Inches of snow in November

      ``Dec``
         Inches of snow in December

      ``Jan``
         Inches of snow in January

      ``Feb``
         Inches of snow in February

      ``Mar``
         Inches of snow in March

      ``Apr``
         Inches of snow in April

      ``May``
         Inches of snow in May

      ``Jun``
         Inches of snow in June

      ``Total``
         Inches of snow for entire season (July-June)

      .. rubric:: Source
         :name: source

      These data were compiled by Laura Kapitula from data available
      from NOAA. The original URL used
      (http://www.crh.noaa.gov/grr/climate/data/grr/snowfall/) is no
      longer in service.

      .. rubric:: Examples
         :name: examples

      ::

         data(SnowGR)
         if (require(ggformula)) {
           df_stats(~ Total, data = SnowGR)
           gf_histogram( ~ Total, data = SnowGR)
           gf_point(Total ~ SeasonStart, data = SnowGR) |>
             gf_smooth()

           if (require(tidyr) && require(dplyr)) {
             Snow2 <-
               SnowGR |>
               pivot_longer(Jul:Total, names_to = "month", values_to = "snowfall") |>
               filter(month != "Total") |>
               mutate(month = factor(month, levels = unique(month)))
             gf_violin(snowfall ~ month, data = Snow2, scale = "width")
           }
         }
