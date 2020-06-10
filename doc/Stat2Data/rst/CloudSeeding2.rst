============= ===============
CloudSeeding2 R Documentation
============= ===============

Cloud Seeding Experiment (Four Seasons)
---------------------------------------

Description
~~~~~~~~~~~

Rainfall amounts from a cloud seeding experiment

Format
~~~~~~

A data frame with 108 observations on the following 8 variables.

========== ==========================================================
``Period`` ID for time period
``Seeded`` Treatment coded as ``S``\ =seeded or ``U``\ =unseeded
``Season`` Coded as ``Autumn``, ``Spring``, ``Summer``, or ``Winter``
``TE``     Rainfall in East (treatment)
``TW``     Rainfall in West (treatment
``NC``     Rainfall in North (control)
``SC``     Rainfall in South (control)
``NWC``    Rainfall in Northwest (control)
\          
========== ==========================================================

Details
~~~~~~~

Researchers were interested in whether seeded clouds would produce more
rainfall. An experiment was conducted in Tasmania between 1964 and 1971
and rainfall amounts were measured in inches per rainfall period. The
researchers measured the amount of rainfall in two target areas: East
(TE) and West (TW). They also measured the amount of rainfall in three
control locations. Clouds were coded as being either seeded (treatment)
or unseeded (control). A subset (only Winter months) of these data is
stored in CloudSeeding. All rainfall amounts are in inches.

Source
~~~~~~

Data were accessed from the website
www.statsci.org/data/oz/cloudtas.html. This is the web home of the
Australasian Data and Story Library (OzDASL).

References
~~~~~~~~~~

A.J. Miller, D.E. Shaw, L.G. Veitch, and E.J. Smith, (1979) "Analyzing
the results of a cloud-seeding experiment in Tasmania" in Communications
in Statistics: Theory and Methods, A8 (10), pp. 1017-1047.
