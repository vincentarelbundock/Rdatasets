.. container::

   === ===============
   co2 R Documentation
   === ===============

   .. rubric:: Mauna Loa Atmospheric CO2 Concentration
      :name: mauna-loa-atmospheric-co2-concentration

   .. rubric:: Description
      :name: description

   Atmospheric concentrations of CO\ ``_2`` are expressed in parts per
   million (ppm) and reported in the preliminary 1997 SIO manometric
   mole fraction scale.

   .. rubric:: Usage
      :name: usage

   ::

      co2

   .. rubric:: Format
      :name: format

   A time series of 468 observations; monthly from 1959 to 1997.

   .. rubric:: Details
      :name: details

   The values for February, March and April of 1964 were missing and
   have been obtained by interpolating linearly between the values for
   January and May of 1964.

   .. rubric:: Source
      :name: source

   Keeling, C. D. and Whorf, T. P., Scripps Institution of Oceanography
   (SIO), University of California, La Jolla, California USA 92093-0220.

   https://scrippsco2.ucsd.edu/data/atmospheric_co2/.

   Note that the data are subject to revision (based on recalibration of
   standard gases) by the Scripps institute, and hence may not agree
   exactly with the data provided by R.

   .. rubric:: References
      :name: references

   Cleveland, W. S. (1993) *Visualizing Data*. New Jersey: Summit Press.

   .. rubric:: Examples
      :name: examples

   ::

      require(graphics)
      plot(co2, ylab = expression("Atmospheric concentration of CO"[2]),
           las = 1)
      title(main = "co2 data set")
