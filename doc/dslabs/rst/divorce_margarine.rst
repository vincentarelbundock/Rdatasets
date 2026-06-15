================= ===============
divorce_margarine R Documentation
================= ===============

Divorce rate and margarine consumption data
-------------------------------------------

Description
~~~~~~~~~~~

Divorce rates in Maine and per capita consumption of margarine in US
data

Usage
~~~~~

.. code:: R

   divorce_margarine

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- divorce_rate_maine. Divorce per 1000 in Maine.

- margarine_consumption_per_capita. US per capita consumption of
  margarine in pounds.

- year. Year.

Source
~~~~~~

`Spurious
Correlations <https://www.tylervigen.com/spurious-correlations>`__

Examples
~~~~~~~~

.. code:: R

   with(divorce_margarine, plot(margarine_consumption_per_capita, divorce_rate_maine))
