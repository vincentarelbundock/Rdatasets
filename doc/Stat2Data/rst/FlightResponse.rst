.. container::

   ============== ===============
   FlightResponse R Documentation
   ============== ===============

   .. rubric:: Response of Migratory Geese to Helicopter Overflights
      :name: FlightResponse

   .. rubric:: Description
      :name: description

   Flight response of Pacific Brant to overflights of helicopters

   .. rubric:: Format
      :name: format

   A dataset with 464 observations on the following 7 variables.

   +--------------+------------------------------------------------------+
   | ``FlockID``  | Flock ID                                             |
   +--------------+------------------------------------------------------+
   | ``Altitude`` | Altitude of the overflight by the helicopter (in     |
   |              | 100m)                                                |
   +--------------+------------------------------------------------------+
   | ``Lateral``  | Lateral distance (in 100m) between the aircraft and  |
   |              | flock                                                |
   +--------------+------------------------------------------------------+
   | ``Flight``   | ``1``\ =more than 10% of flock flies away or         |
   |              | ``0``\ =otherwise                                    |
   +--------------+------------------------------------------------------+
   | ``AltLat``   | Product of Altitude x Lateral                        |
   +--------------+------------------------------------------------------+
   | ``AltCat``   | Altitude categories: ``low``\ =under 3, ``mid``\ =3  |
   |              | to 6, ``high``\ =over 6                              |
   +--------------+------------------------------------------------------+
   | ``LatCat``   | Lateral categories: ``1``\ under 10 to ``4``\ =over  |
   |              | 30                                                   |
   +--------------+------------------------------------------------------+
   |              |                                                      |
   +--------------+------------------------------------------------------+

   .. rubric:: Details
      :name: details

   A 1994 study collected data on the effects of air traffic on the
   behavior of the Pacific Brant (a small migratory goose). The data
   represent the flight response to helicopter "overflights" to see what
   the relationship between the proximity of a flight, both lateral and
   altitudinal, would be to the propensity of the Brant to flee the
   area. For this experiment, air traffic was restricted to helicopters
   because previous study had ascertained that helicopters created more
   radical flight response than other aircraft. The data are in
   FlightResponse. Each case represents a flock of Brant that has been
   observed during one overflight in the study. Flocks were determined
   observationally as contiguous collections of Brants, flock sizes
   varying from 10 to 30,000 birds.

   .. rubric:: Source
      :name: source

   Data come from the book Statistical Case Studies: A Collaboration
   Between Academe and Industry, Roxy Peck, Larry D. Haugh, and Arnold
   Goodman, editors; SIAM and ASA, 1998.
