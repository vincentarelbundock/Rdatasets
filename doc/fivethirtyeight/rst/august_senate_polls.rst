=================== ===============
august_senate_polls R Documentation
=================== ===============

How Much Trouble Is Ted Cruz Really In?
---------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "How Much Trouble Is Ted Cruz Really In?"
https://fivethirtyeight.com/features/how-much-trouble-is-ted-cruz-really-in/.

Usage
~~~~~

.. code:: R

   august_senate_polls

Format
~~~~~~

A data frame with 594 rows representing senate polls, and 11 variables:

cycle
   the election year

state
   the state of the poll

senate_class
   the class of the senate

start_date
   the start date of the poll

end_date
   the end odate of the poll

dem_poll
   the percent of support for the Democrat during the poll

rep_poll
   the percent of support for the Republican during the poll

dem_result
   the result percent of support for the Democrat during the election

rep_result
   the result percent of support for the Republican during the election

error
   the difference between the percent of support of one party during the
   poll and the result percent of support for the same party during the
   election

absolute_error
   the absolute value of the error value

Source
~~~~~~

Emerson College’s poll of registered voters
