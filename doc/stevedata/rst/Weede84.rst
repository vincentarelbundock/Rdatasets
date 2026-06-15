======= ===============
Weede84 R Documentation
======= ===============

Military Conflict or War Involvement, 1960-1980 (Weede, 1984)
-------------------------------------------------------------

Description
~~~~~~~~~~~

A data set on military conflict/war involvement and democracy.

Usage
~~~~~

.. code:: R

   Weede84

Format
~~~~~~

A data frame with 101 observations on the following 3 variables.

``ccode``
   a Correlates of War state code

``country``
   a slightly more informative identifier for the Correlates of War
   state code

``dem``
   a binary indicator for whether Weede (1984, Table 3) identifies the
   state as a democracy

``butter``
   a count(?) variable of conflicts with over 100 casualties

``kende``
   a count(?) variable of wars, according to Kende (1982)

``ssiw``
   a count of involvement in Singer and Small (1972) inter-state wars

``ssiw_id``
   an identifier of years in inter-state war, where applicable

``ssew``
   a count of involvement in Singer and Small (1972) extra-state wars

``ssew_id``
   an identifier of years in extra-state war, where applicable

Details
~~~~~~~

Data come from the appendix. The ``⁠_id⁠`` inputs were the parentheses in
the table. Weede (1984) identifies the democracies in Table 3 (p. 658)
of his article.

Butterworth's temporal domain is 1960-1974. Kende and Singer and Small
cover 1960-1980.

I'll admit I have never seen the Kende (1982) data before, and I like to
think I'm well-versed in this stuff.

References
~~~~~~~~~~

Weede, Erich. 1984. "Democracy and War Involvement." *Journal of
Conflict Resolution* 28(4): 649–664.
