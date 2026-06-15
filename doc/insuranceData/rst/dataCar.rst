======= ===============
dataCar R Documentation
======= ===============

data Car
--------

Description
~~~~~~~~~~~

This data set is based on one-year vehicle insurance policies taken out
in 2004 or 2005. There are 67856 policies, of which 4624 (6.8

Usage
~~~~~

.. code:: R

   data(dataCar)

Format
~~~~~~

A data frame with 67856 observations on the following 11 variables.

``veh_value``
   vehicle value, in $10,000s

``exposure``
   0-1

``clm``
   occurrence of claim (0 = no, 1 = yes)

``numclaims``
   number of claims

``claimcst0``
   claim amount (0 if no claim)

``veh_body``
   vehicle body, coded as ``BUS`` ``CONVT`` ``COUPE`` ``HBACK``
   ``HDTOP`` ``MCARA`` ``MIBUS`` ``PANVN`` ``RDSTR`` ``SEDAN`` ``STNWG``
   ``TRUCK`` ``UTE``

``veh_age``
   1 (youngest), 2, 3, 4

``gender``
   a factor with levels ``F`` ``M``

``area``
   a factor with levels ``A`` ``B`` ``C`` ``D`` ``E`` ``F``

``agecat``
   1 (youngest), 2, 3, 4, 5, 6

``X_OBSTAT_``
   a factor with levels ``01101 0 0 0``

Details
~~~~~~~

dataset "Car"

Source
~~~~~~

http://www.acst.mq.edu.au/GLMsforInsuranceData

References
~~~~~~~~~~

De Jong P., Heller G.Z. (2008), Generalized linear models for insurance
data, Cambridge University Press

Examples
~~~~~~~~

.. code:: R

   data(dataCar)
   ## maybe str(dataCar) ; plot(dataCar) ...
