.. container::

   ============== ===============
   midterms_house R Documentation
   ============== ===============

   .. rubric:: President's party performance and unemployment rate
      :name: presidents-party-performance-and-unemployment-rate

   .. rubric:: Description
      :name: description

   Covers midterm elections.

   .. rubric:: Usage
      :name: usage

   ::

      midterms_house

   .. rubric:: Format
      :name: format

   A data frame with 29 observations on the following 5 variables.

   year
      Year.

   potus
      The president in office.

   party
      President's party: Democrat or Republican.

   unemp
      Unemployment rate.

   house_change
      Change in House seats for the President's party.

   .. rubric:: Details
      :name: details

   An older version of this data is at ``unemploy_pres``.

   .. rubric:: Source
      :name: source

   Wikipedia.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      ggplot(midterms_house, aes(x = unemp, y = house_change)) +
        geom_point()
