.. container::

   ==== ===============
   edcT R Documentation
   ==== ===============

   .. rubric:: EPICA Dome C Ice Core 800KYr Temperature Estimates
      :name: edcT

   .. rubric:: Description
      :name: description

   Temperature record, using Deuterium as a proxy, from the EPICA
   (European Project for Ice Coring in Antarctica) Dome C ice core
   covering 0 to 800 kyr BP.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(edcT)

   .. rubric:: Format
      :name: format

   A data frame with 5788 observations on the following 5 variables.

   ``Bag``
      Bag number

   ``ztop``
      Top depth (m)

   ``Age``
      Years before 1950

   ``Deuterium``
      Deuterium dD data

   ``dT``
      Temperature difference from the average of the last 1000 years ~
      -54.5degC

   .. rubric:: Details
      :name: details

   Temperature was estimated from the deuterium data, after making
   various corrections.

   .. rubric:: Source
      :name: source

   https://www.ncei.noaa.gov/products/paleoclimatology/ice-core

   .. rubric:: References
      :name: references

   Jouzel, J., et al. 2007. EPICA Dome C Ice Core 800KYr Deuterium Data
   and Temperature Estimates. IGBP PAGES/World Data Center for
   Paleoclimatology Data Contribution Series No. 2007-091. NOAA/NCDC
   Paleoclimatology Program, Boulder CO, USA.

   Jouzel, J., et al. 2007. Orbital and Millennial Antarctic Climate
   Variability over the Past 800,000 Years. Science, Vol. 317, No. 5839,
   pp.793-797, 10 August 2007.

   .. rubric:: Examples
      :name: examples

   .. code:: R

       data(edcT) 
