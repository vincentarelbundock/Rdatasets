========== ===============
Thirdparty R Documentation
========== ===============

Third party insurance
---------------------

Description
~~~~~~~~~~~

Third party insurance is a compulsory insurance for vehicle owners in
Australia. It insures vehicle owners against injury caused to other
drivers, passengers or pedestrians, as a result of an accident.

This data set records the number of third party claims in a twelve–month
period between 1984-1986 in each of 176 geographical areas (local
government areas) in New South Wales, Australia.

Usage
~~~~~

.. code:: R

   data(Thirdparty)

Format
~~~~~~

A data frame with 176 observations on the following variable.

``lga.sd.claims.accidents.ki.population.pop_density``
   a numeric vector

Details
~~~~~~~

The dataset "Third Party Claims"

Source
~~~~~~

http://www.businessandeconomics.mq.edu.au/our_departments/Applied_Finance_and_Actuarial_Studies/

research/books/GLMsforInsuranceData/data_sets

References
~~~~~~~~~~

De Jong P., Heller G.Z. (2008), Generalized linear models for insurance
data, Cambridge University Press

Examples
~~~~~~~~

.. code:: R

   data(Thirdparty)
   ## maybe str(Thirdparty) ; plot(Thirdparty) ...
