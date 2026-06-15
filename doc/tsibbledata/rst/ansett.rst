====== ===============
ansett R Documentation
====== ===============

Passenger numbers on Ansett airline flights
-------------------------------------------

Description
~~~~~~~~~~~

The data features a major pilots' industrial dispute which results in
some weeks having zero passengers. There were also at least two changes
in the definitions of passenger classes.

Format
~~~~~~

Time series of class ``tsibble``

Details
~~~~~~~

``ansett`` is a weekly ``tsibble`` with one value:

=========== ===========================================
Passengers: Total air passengers travelling with Ansett
            
=========== ===========================================

Each series is uniquely identified using two keys:

+-----------+----------------------------------------------------------+
| Airports: | The airports that passengers are travelling between      |
|           | (both directions)                                        |
+-----------+----------------------------------------------------------+
| Class:    | The class of the ticket.                                 |
+-----------+----------------------------------------------------------+
|           |                                                          |
+-----------+----------------------------------------------------------+

Source
~~~~~~

Ansett Airlines (which no longer exists).

Examples
~~~~~~~~

.. code:: R

   library(tsibble)
   ansett
