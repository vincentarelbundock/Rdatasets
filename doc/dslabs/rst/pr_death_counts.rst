=============== ===============
pr_death_counts R Documentation
=============== ===============

Puerto Rico daily mortality
---------------------------

Description
~~~~~~~~~~~

A data frame with Puerto Rico daily mortality counts 2015 to May 2018.
This includes the day hurricanes Maria made 2017-09-20.

Usage
~~~~~

.. code:: R

   pr_death_counts

Format
~~~~~~

An object of class ``data.frame``.

Details
~~~~~~~

- date. Date of the count.

- deaths. Number of deaths reported that day.

Source
~~~~~~

Puerto Rico Demographic Registry. Data was extracted from PDF provided
in 'system.file("extdata", "RD-Mortality-Report_2015-18-180531.pdf",
package = "dslabs")'

Examples
~~~~~~~~

.. code:: R


   with(pr_death_counts, plot(date, deaths))
