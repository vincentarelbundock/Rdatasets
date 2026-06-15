======= ===============
tourism R Documentation
======= ===============

Australian domestic overnight trips
-----------------------------------

Description
~~~~~~~~~~~

A dataset containing the quarterly overnight trips from 1998 Q1 to 2016
Q4 across Australia.

Usage
~~~~~

.. code:: R

   tourism

Format
~~~~~~

A tsibble with 23,408 rows and 5 variables:

- **Quarter**: Year quarter (index)

- **Region**: The tourism regions are formed through the aggregation of
  Statistical Local Areas (SLAs) which are defined by the various State
  and Territory tourism authorities according to their research and
  marketing needs

- **State**: States and territories of Australia

- **Purpose**: Stopover purpose of visit:

  - "Holiday"

  - "Visiting friends and relatives"

  - "Business"

  - "Other reason"

- **Trips**: Overnight trips in thousands

References
~~~~~~~~~~

`Tourism Research Australia <https://www.tra.gov.au>`__

Examples
~~~~~~~~

.. code:: R

   library(dplyr)
   data(tourism)
   # Total trips over geographical regions
   tourism %>%
     group_by(Region, State) %>%
     summarise(Total_Trips = sum(Trips))
