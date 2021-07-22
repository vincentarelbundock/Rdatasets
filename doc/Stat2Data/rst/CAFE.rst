==== ===============
CAFE R Documentation
==== ===============

US Senate Votes on Corporate Average Fuel Economy Bill
------------------------------------------------------

Description
~~~~~~~~~~~

Senate votes for Corporate Average Fuel Economy (CAFE) bill

Format
~~~~~~

A data frame with 100 observations on the following 7 variables.

+------------------+--------------------------------------------------+
| ``Senator``      | Senator's name                                   |
+------------------+--------------------------------------------------+
| ``State``        | Code for senator's state                         |
+------------------+--------------------------------------------------+
| ``Party``        | party affiliation: ``D``\ =Democrat,             |
|                  | ``I``\ =Independent, ``R``\ =Republican          |
+------------------+--------------------------------------------------+
| ``Contribution`` | Contributions from car manufactures (dollars)    |
+------------------+--------------------------------------------------+
| ``LogContr``     | Log of (Contribution+1)                          |
+------------------+--------------------------------------------------+
| ``Dem``          | ``1``\ =Democrat/Independent ``0``\ =Republican  |
+------------------+--------------------------------------------------+
| ``Vote``         | ``1``\ =yes or ``0``\ =no                        |
+------------------+--------------------------------------------------+
|                  |                                                  |
+------------------+--------------------------------------------------+

Details
~~~~~~~

The Corporate Average Fuel Economy (CAFE) Bill was proposed by Senators
John McCain and John Kerry to improve the fuel economy of cars and light
trucks sold in the United States. However a critical vote on an
amendment in March of 2002 threatened to indefinitely postpone CAFE. The
amendment charged the National Highway Traffic Safety Administration to
develop a new standard, the effect being to put on indefinite hold the
McCain-Kerry bill. It passed by a vote of 62-38. A political question of
interest is whether there is evidence of monetary influence on a
senator's vote. Scott Preston, a professor of statistics at SUNY,
Oswego, collected data on this vote which includes the vote of each
senator (1=Yes or 0=No) and monetary contributions that each of the 100
senators received over his or her lifetime from the car manufacturers.

Source
~~~~~~

Thanks to Prof. Scott Preston from SUNY Oswego for the data.
