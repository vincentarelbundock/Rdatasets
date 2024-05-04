.. container::

   .. container::

      ============ ===============
      CoolingWater R Documentation
      ============ ===============

      .. rubric:: CoolingWater
         :name: coolingwater

      .. rubric:: Description
         :name: description

      Temperature of a mug of water as it cools

      .. rubric:: Usage
         :name: usage

      ::

         data(CoolingWater)

      .. rubric:: Format
         :name: format

      A data frame with 222 observations of the following variables.

      ``time``
         time in minutes

      ``temp``
         temperature in Celsius

      .. rubric:: Details
         :name: details

      The water was poured into a mug and a temperature probe inserted
      into the water with a few seconds of the pour.

      .. rubric:: Source
         :name: source

      These data were collected Stan Wagon to help his mathematical
      modeling students explore Newton's Law of Cooling and the ways
      that the law is really only an approximation. More about Stan:
      http://stanwagon.com.

      .. rubric:: Examples
         :name: examples

      ::

         data(CoolingWater)
         if (require(ggformula)) {
           gf_point(temp ~ time, data = CoolingWater, alpha = 0.5)
         }
