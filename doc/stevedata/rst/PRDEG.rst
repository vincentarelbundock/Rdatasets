===== ===============
PRDEG R Documentation
===== ===============

Property Rights, Democracy, and Economic Growth
-----------------------------------------------

Description
~~~~~~~~~~~

A data set for replicating David Leblang's (1996) analysis on property
rights, democracy, and economic growth.

Usage
~~~~~

.. code:: R

   PRDEG

Format
~~~~~~

A data frame with 147 observations on the following 10 variables.

``levine``
   a numeric vector that serves as a cross-section identifier

``country``
   a character vector for the country

``decade``
   a numeric vector for a decade

``private``
   a numeric vector for credit allocated to private enterprise

``rgdp``
   a numeric vector for the initial level of real per capita GDP

``democ``
   a numeric vector for the level of democracy

``pri``
   a numeric vector for primary school attainment

``sec``
   a numeric vector for secondary school attainment

``grow``
   a numeric vector for per capita growth rate

``xcontrol``
   a numeric vector for exchange controls

Details
~~~~~~~

Data come Joshua Alley's Github repository on cross-sectional OLS
regressions. Please read David Leblang's (1996) article for some more
detail about the variables included in the model.

References
~~~~~~~~~~

Leblang, David. 1996. "Property Rights, Democracy, and Economic Growth."
49(1): 5-26.
