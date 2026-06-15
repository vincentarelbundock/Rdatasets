========== ===============
polls_2008 R Documentation
========== ===============

Poll data for popular vote in 2008 presidential election
--------------------------------------------------------

Description
~~~~~~~~~~~

Data from different pollsters for the popular vote between Obama and
McCain in the 2008 presidential election.

Usage
~~~~~

.. code:: R

   polls_2008

Format
~~~~~~

An object of class ``data.frame``.

Details
~~~~~~~

- day. Days until election day. Negative numbers are reported so that
  days can increase up to 0, which is election day.

- margin. Average difference between Obama and McCain for that day.

Source
~~~~~~

https://web.archive.org/web/20161108190914/http://www.pollster.com/08USPresGEMvO-2.html

Examples
~~~~~~~~

.. code:: R

   with(polls_2008, plot(day, margin))
