======= ===============
mmb_war R Documentation
======= ===============

Mutual Military Build-Ups and War
---------------------------------

Description
~~~~~~~~~~~

A simple data set on mutual military build-ups and war, useful for
teaching about a long-standing empirical debate in international
relations by way of basic tests (like a chi-square test).

Usage
~~~~~

.. code:: R

   mmb_war

Format
~~~~~~

A data frame with 2324 observations on the following 9 variables.

``ccode1``
   a Correlates of War state code

``ccode2``
   another Correlates of War state code

``tssr_id``
   a rivalry identifier

``micnum``
   the start year of a confrontation between the two states

``year``
   the start year of a confrontation between the two states

``dyfatmin``
   the minimum estimated dyadic fatalities in the confrontation

``dyfatmax``
   the maximum estimated dyadic fatalities in the confrontation

``sumevents``
   the total number of events in the confrontation

``mmb``
   a dummy variable that equals 1 if the confrontation came after the
   start of a mutual military build-up

Details
~~~~~~~

The unit of analysis for these data are non-directed dyadic
confrontations for strategic rivals. Be mindful that confrontations
start with the first event of any kind. See Gibler and Miller (2024a,
2024b) for more about events and confrontations. See Thompson et al.
(2021) for more information about strategic rivalries.

Mutual military build-ups (MMBs, for short) are a slightly more evasive
label I'm using for the more familiar "arms race." They are
operationalized largely from Gibler et al. (2005). Briefly: mutual
military build-ups are any episode in 1) a rivalry relationship where 2)
each dyadic partner is increasing their military expenditure *or*
personnel, 3) eight percent or more from the previous year, 4) for at
least three years where 5) historical evidence largely corroborates a
directionality in the mobilization of the kind we would broadly
conceptualize (a la Richardson, 1939). In other words, the mutual
mobilization isn't coincidental or a function of other priorities.

The data I recreate here follow Gibler et al. (2005), but use newer
capabilities and rivalry data. I further employ some case exclusion
rules that would not otherwise be evident in a reading of Gibler et al.
(2005). First, I take some care to exclude cases where it is pretty
clear that what Gibler et al. (2005) call an arms race is more
accurately just the mobilization of the war itself. For example, their
arms race #26 between China and Japan occurs between 1940 and 1944,
though the ongoing war between both comfortably covers it. Related, I
employ an admittedly ad hoc termination date to end when we might
comfortably note a war is ongoing (see: the various World War 1 arms
races). Further, I often extend a year to an arms race if one side
started mobilizing first and the other side only started mobilizing the
next year and/or one side continued mobilizing for a year after the
other stopped. This is why, for example, I have an extra year in the
Spain-Morocco build-up in the early 1970s (Spain mobilized through
1975). There were some cases where I disagreed that something could be
considered an arms race/mutual military build-up by this metric. For
example, the build-up observed between Somalia and Ethiopia in the 1970s
(their arms race #44) is an interesting case where it's clear Ethiopia
is mobilizing. However, the data suggest only one year of mobilization
for Somalia (1974). I remove those cases from my recreation.

References
~~~~~~~~~~

Gibler, Douglas M. 2005. "Taking Arms against a Sea of Troubles:
Conventional Arms Races during Periods of Rivalry" *Journal of Peace
Research* 42(2): 131-47.

Gibler, Douglas M., and Steven V. Miller. 2024a. "The Militarized
Interstate Confrontation Dataset, 1816-2014." *Journal of Conflict
Resolution* 68(2–3): 562–86.

Gibler, Douglas M., and Steven V. Miller. 2024b. "The Militarized
Interstate Events (MIE) Dataset, 1816–2014." *Conflict Management and
Peace Science* 41(4): 463–81.

Richardson, Lewis F. 1939. *Generalized Foreign Politics*. Cambridge
University Press.

Thompson, William R., Kentaro Sakuwa, and Prashant Hosur Suhas. 2021.
*Analyzing Strategic Rivalries in World Politics: Types of Rivalry,
Regional Variation, and Escalation/De-escalation*. Springer.
