==== ===============
SBCD R Documentation
==== ===============

Systemic Banking Crises Database II
-----------------------------------

Description
~~~~~~~~~~~

A data set on banking, currency, debt, and debt-restructuring crises
from 1970 to 2017.

Usage
~~~~~

.. code:: R

   SBCD

Format
~~~~~~

A data frame with 574 observations on the following 4 variables.

``country``
   the country, as it appears in the data

``type``
   the type of crisis, entered here as "banking", "currency", "debt", or
   "debtrestructuring"

``year``
   the year of the crisis

``month``
   the month the crisis started, if known

Details
~~~~~~~

Data are cobbled from the second and third sheets of the spreadsheet the
authors provide. Country names are as entered in their spreadsheet.
Liberia has an "NA" in the raw data for sovereign debt restructuring and
I don't know why. I elect to keep it.

References
~~~~~~~~~~

Laeven, Luc and Fabian Valencia. 2020. "Systemic Banking Crises Database
II". *IMF Economic Review* 68: 307–361.
