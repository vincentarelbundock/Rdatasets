.. container::

   .. container::

      ============== ===============
      airline_safety R Documentation
      ============== ===============

      .. rubric:: Should Travelers Avoid Flying Airlines That Have Had
         Crashes in the Past?
         :name: should-travelers-avoid-flying-airlines-that-have-had-crashes-in-the-past

      .. rubric:: Description
         :name: description

      The raw data behind the story "Should Travelers Avoid Flying
      Airlines That Have Had Crashes in the Past?"
      https://fivethirtyeight.com/features/should-travelers-avoid-flying-airlines-that-have-had-crashes-in-the-past/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         airline_safety

      .. rubric:: Format
         :name: format

      A data frame with 56 rows representing airlines and 9 variables:

      airline
         airline

      incl_reg_subsidiaries
         indicates that regional subsidiaries are included

      avail_seat_km_per_week
         available seat kilometers flown every week

      incidents_85_99
         Total number of incidents, 1985-1999

      fatal_accidents_85_99
         Total number of fatal accidents, 1985-1999

      fatalities_85_99
         Total number of fatalities, 1985-1999

      incidents_00_14
         Total number of incidents, 2000-2014

      fatal_accidents_00_14
         Total number of fatal accidents, 2000-2014

      fatalities_00_14
         Total number of fatalities, 2000-2014

      .. rubric:: Source
         :name: source

      Aviation Safety Network https://aviation-safety.net.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         library(stringr)
         airline_safety_tidy <- airline_safety %>%
           pivot_longer(-c(airline, incl_reg_subsidiaries, avail_seat_km_per_week), 
             names_to = "type", values_to = "count") %>%
           mutate(
             period = str_sub(type, start=-5),
             period = str_replace_all(period, "_", "-"),
             type = str_sub(type, end=-7)
           )
