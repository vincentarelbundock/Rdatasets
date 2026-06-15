=============== ===============
ami_occurrences R Documentation
=============== ===============

Acute Myocardial Infarction (Heart Attack) Events
-------------------------------------------------

Description
~~~~~~~~~~~

This dataset is simulated but contains realistic occurrences of AMI in
NY City.

Usage
~~~~~

.. code:: R

   ami_occurrences

Format
~~~~~~

A data frame with 365 observations on the following variable.

ami
   Number of daily occurrences of heart attacks in NY City.

Examples
~~~~~~~~

.. code:: R


   library(ggplot2)

   ggplot(ami_occurrences, mapping = aes(x = ami)) +
     geom_bar() +
     labs(
       x = "Acute Myocardial Infarction events",
       y = "Count",
       title = "Acute Myocardial Infarction events in NYC"
     )
