.. container::

   .. container::

      =============== ===============
      olympic_running R Documentation
      =============== ===============

      .. rubric:: Fastest running times for Olympic races
         :name: fastest-running-times-for-olympic-races

      .. rubric:: Description
         :name: description

      ``olympic_running`` is a quadrennial ``tsibble`` with one value:

      ===== ============================================
      Time: Fastest running time for the event (seconds)
      \     
      ===== ============================================

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``

      .. rubric:: Details
         :name: details

      The event is identified using two keys:

      ======= ===============================
      Length: The length of the race (meters)
      Sex:    The sex of the event
      \       
      ======= ===============================

      The data contains missing values in 1916, 1940 and 1944 due to the
      World Wars.

      .. rubric:: Source
         :name: source

      https://olympics.com/en/sports/athletics/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         olympic_running

         if(requireNamespace("ggplot2")){
         library(ggplot2)
         olympic_running %>% as_tibble %>%
           ggplot(aes(x=Year, y = Time, colour = Sex)) +
           geom_line() +
           facet_wrap(~ Length, scales = "free_y")
         }
