============= ===============
SingaporeAuto R Documentation
============= ===============

Singapore Automobile Claims
---------------------------

Description
~~~~~~~~~~~

The data is from the General Insurance Association of Singapore, an
organization consisting of general (property and casualty) insurers in
Singapore (see the organization's website: www.gia.org.sg). From this
database, several characteristics are available to explain automobile
accident frequency. These characteristics include vehicle variables,
such as type and age, as well as person level variables, such as age,
gender and prior driving experience.

Usage
~~~~~

.. code:: R

   data(SingaporeAuto)

Format
~~~~~~

A data frame with 7483 observations on the following 15 variables.

``SexInsured``
   a factor with levels ``F`` ``M`` ``U``

``Female``
   a numeric vector

``VehicleType``
   a factor with levels ``A`` ``G`` ``M`` ``P`` ``Q`` ``S`` ``T`` ``W``
   ``Z``

``PC``
   a numeric vector

``Clm_Count``
   a numeric vector

``Exp_weights``
   a numeric vector

``LNWEIGHT``
   a numeric vector

``NCD``
   a numeric vector

``AgeCat``
   a numeric vector

``AutoAge0``
   a numeric vector

``AutoAge1``
   a numeric vector

``AutoAge2``
   a numeric vector

``AutoAge``
   a numeric vector

``VAgeCat``
   a numeric vector

``VAgecat1``
   a numeric vector

Details
~~~~~~~

http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression%20Modeling/BookWebDec2010/

DataDescriptions.pdf

Source
~~~~~~

http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression%20Modeling/BookWebDec2010/data.html

References
~~~~~~~~~~

Frees E.W., Valdez E.A. (2008), Hierarchical insurance claims modeling,
,,Journal of the American Statistical Association", 103(484), p.
1457-1469.

Frees E.W. (2010), Regression Modeling with Actuarial and Financial
Applications, Cambridge University Press.

Examples
~~~~~~~~

.. code:: R

   data(SingaporeAuto)
   ## maybe str(SingaporeAuto) ; plot(SingaporeAuto) ...
