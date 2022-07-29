.. container::

   ====== ===============
   snails R Documentation
   ====== ===============

   .. rubric:: Snail Mortality Data
      :name: snail-mortality-data

   .. rubric:: Description
      :name: description

   Groups of 20 snails were held for periods of 1, 2, 3 or 4 weeks in
   carefully controlled conditions of temperature and relative humidity.
   There were two species of snail, A and B, and the experiment was
   designed as a 4 by 3 by 4 by 2 completely randomized design. At the
   end of the exposure time the snails were tested to see if they had
   survived; the process itself is fatal for the animals. The object of
   the exercise was to model the probability of survival in terms of the
   stimulus variables, and in particular to test for differences between
   species.

   The data are unusual in that in most cases fatalities during the
   experiment were fairly small.

   .. rubric:: Usage
      :name: usage

   ::

      snails

   .. rubric:: Format
      :name: format

   The data frame contains the following components:

   ``Species``
      snail species A (``1``) or B (``2``).

   ``Exposure``
      exposure in weeks.

   ``Rel.Hum``
      relative humidity (4 levels).

   ``Temp``
      temperature, in degrees Celsius (3 levels).

   ``Deaths``
      number of deaths.

   ``N``
      number of snails exposed.

   .. rubric:: Source
      :name: source

   Zoology Department, The University of Adelaide.

   .. rubric:: References
      :name: references

   Venables, W. N. and Ripley, B. D. (1999) *Modern Applied Statistics
   with S-PLUS.* Third Edition. Springer.
