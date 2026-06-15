====================== ===============
us_contagious_diseases R Documentation
====================== ===============

Contagious disease data for US states
-------------------------------------

Description
~~~~~~~~~~~

Yearly counts for Hepatitis A, Measles, Mumps, Pertussis, Polio,
Rubella, and Smallpox for US states. Original data courtesy of Tycho
Project (http://www.tycho.pitt.edu/).

Usage
~~~~~

.. code:: R

   us_contagious_diseases

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- disease. A factor containing disease names.

- state. A factor containing state names.

- year.

- weeks_reporting. Number of weeks counts were reported that year.

- count. Total number of reported cases.

- population. State population, interpolated for non-census years.

Source
~~~~~~

`Tycho Project <http://www.tycho.pitt.edu/>`__

References
~~~~~~~~~~

Willem G. van Panhuis, John Grefenstette, Su Yon Jung, Nian Shong Chok,
Anne Cross, Heather Eng, Bruce Y Lee, Vladimir Zadorozhny, Shawn Brown,
Derek Cummings, Donald S. Burke. Contagious Diseases in the United
States from 1888 to the present. NEJM 2013; 369(22): 2152-2158.

Examples
~~~~~~~~

.. code:: R

   head(us_contagious_diseases)
