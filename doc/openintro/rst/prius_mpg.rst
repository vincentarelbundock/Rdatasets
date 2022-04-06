.. container::

   ========= ===============
   prius_mpg R Documentation
   ========= ===============

   .. rubric:: User reported fuel efficiency for 2017 Toyota Prius Prime
      :name: user-reported-fuel-efficiency-for-2017-toyota-prius-prime

   .. rubric:: Description
      :name: description

   Fueleconomy.gov, the official US government source for fuel economy
   information, allows users to share gas mileage information on their
   vehicles. These data come from 19 users sharing gas mileage on their
   2017 Toyota Prius Prime. Note that these data are user estimates and
   since the sources data cannot be verified, the accuracy of these
   estimates are not guaranteed.

   .. rubric:: Usage
      :name: usage

   ::

      prius_mpg

   .. rubric:: Format
      :name: format

   A data frame with 19 observations on the following 10 variables.

   average_mpg
      Average mileage as estimated by the user.

   state
      US State the user lives in.

   stop_and_go
      Proportion of stop and go driving.

   highway
      Proportion of highway driving.

   last_updated
      Date estimate was last updated.

   .. rubric:: Source
      :name: source

   Fueleconomy.gov,
   https://www.fueleconomy.gov/mpg/MPG.do?action=mpgData&vehicleID=38531&browser=true&details=on,
   retrieved 2019-04-14.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)
      library(dplyr)

      ggplot(prius_mpg, aes(x = average_mpg)) +
        geom_histogram(binwidth = 25)
