============ ===============
CloudSeeding R Documentation
============ ===============

Cloud Seeding Experiment (Winter Only)
--------------------------------------

Description
~~~~~~~~~~~

Rainfall amounts from a cloud seeding experiment (winter only)

Format
~~~~~~

A data frame with 28 observations on the following 7 variables.

========== =====================================================
``Seeded`` Treatment coded as ``S``\ =seeded or ``U``\ =unseeded
``Season`` All in ``Winter``
``TE``     Rainfall in East (treatment)
``TW``     Rainfall in West (treatment
``NC``     Rainfall in North (control)
``SC``     Rainfall in South (control)
``NWC``    Rainfall in Northwest (control)
\          
========== =====================================================

Details
~~~~~~~

Researchers were interested in whether seeded clouds would produce more
rainfall. An experiment was conducted in Tasmania between 1964 and 1971
and rainfall amounts were measured in inches per rainfall period. The
researchers measured the amount of rainfall in two target areas: East
(TE) and West (TW). They also measured the amount of rainfall in three
control locations. Clouds were coded as being either seeded (treatment)
or unseeded (control). This is a subset (only Winter months) of the
larger CloudSeeding2 dataset. All rainfall amounts are in inches.

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
