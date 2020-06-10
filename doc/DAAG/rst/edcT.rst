==== ===============
edcT R Documentation
==== ===============

EPICA Dome C Ice Core 800KYr Temperature Estimates
--------------------------------------------------

Description
~~~~~~~~~~~

Temperature record, using Deuterium as a proxy, from the EPICA (European
Project for Ice Coring in Antarctica) Dome C ice core covering 0 to 800
kyr BP.

Usage
~~~~~

::

   data(edcT)

Format
~~~~~~

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

Details
~~~~~~~

Temperature was estimated from the deuterium data, after making various
corrections.

Source
~~~~~~

http://www.ncdc.noaa.gov/paleo/icecore/antarctica/domec/domec_epica_data.html

References
~~~~~~~~~~

Jouzel, J., et al. 2007. EPICA Dome C Ice Core 800KYr Deuterium Data and
Temperature Estimates. IGBP PAGES/World Data Center for Paleoclimatology
Data Contribution Series \\# 2007-091. NOAA/NCDC Paleoclimatology
Program, Boulder CO, USA.

Jouzel, J., et al. 2007. Orbital and Millennial Antarctic Climate
Variability over the Past 800,000 Years. Science, Vol. 317, No. 5839,
pp.793-797, 10 August 2007.

Examples
~~~~~~~~

::

    data(edcT) 
