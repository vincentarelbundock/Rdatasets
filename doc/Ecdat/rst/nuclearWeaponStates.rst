=================== ===============
nuclearWeaponStates R Documentation
=================== ===============

Nations with nuclear weapons
----------------------------

Description
~~~~~~~~~~~

Data on the 9 nuclear-weapon states as of April 2019.

Usage
~~~~~

::

   data(nuclearWeaponStates)

Format
~~~~~~

A dataframe containing :

nation
   The name of the country (character). The former USSR is listed here
   as Russia.

ctry
   `ISO
   31661- <https://en.wikipedia.org/wiki/ISO_3166-1#cite_note-iso3166-info-1>`__
   alpha-2 two-letter country codes (character).

firstTest
   Date of first test of a nuclear weapon.

   For Israel, which has not publicly acknowledged that it has nuclear
   weapons, this uses the Date of the `Vela
   Incident <https://en.wikipedia.org/wiki/Vela_Incident>`__.

firstTestYr
   ``lubridate::decimal_date(firstTest)``

yearsSinceLastFirstTest
   ``c(NA, diff(firstTestYr))``

nuclearWeapons
   number of nuclear weapons

nYieldNA, nLowYield, nMidYield, nHighYield
   number of weapons for which the yield in ``(nYieldNA)`` = unknown or
   variable, ``(nLowYield)`` = at most 15 kt (kilotons), the size of the
   Hiroshima bomb, ``(nMidYield)`` = greater than 15 but less that 50
   kt, and ``(nHighYield)`` = at least 50 kt.

popM, popYr
   ``popM`` = estimated population in millions for year ``popYr``, per
   the Wikipedia article for the indicated country on 2020-02-05.

GDP_B, GDPyr
   ``GDP_B`` = nominal Gross Domestic Product in billions of US dollars
   for year ``GDPyr``, per the Wikipedia article for the indicated
   country on 2020-02-05.

Source
~~~~~~

Overview from `World Nuclear Weapon
Stockpile <https://www.ploughshares.org/world-nuclear-stockpile-report>`__

``firstTest`` from `Wikipedia, "List of states with nuclear
weapons" <https://en.wikipedia.org/wiki/List_of_states_with_nuclear_weapons>`__

US from `Hans M. Kristensen & Robert S. Norris (2018) United States
nuclear forces,2018, Bulletin of the Atomic Scientists, 74:2, 120-131,
DOI:
10.1080/00963402.2018.143821 <https://www.tandfonline.com/doi/pdf/10.1080/00963402.2018.1438219?needAccess=true>`__

Russia from `Hans M. Kristensen & Matt Korda (2019) Russian nuclear
forces, 2019, Bulletin of the Atomic Scientists, 75:2, 73-84, DOI:
10.1080/00963402.2019.1580891 <https://www.tandfonline.com/doi/pdf/10.1080/00963402.2019.1580891?needAccess=true>`__

UK from `Robert S. Norris and Hans M. Kristensen (2013) The British
nuclear stockpile, 1953-2013, Bulletin of the Atomic Scientists, 69:4,
69-75s <https://journals.sagepub.com/doi/pdf/10.1177/0096340213493260>`__

France from `Robert S. Norris & Hans M. Kristensen (2008) French nuclear
forces, 2008, Bulletin of the Atomic Scientists, 64:4, 52-54,
57 <https://journals.sagepub.com/doi/pdf/10.2968/064004012>`__

China from `Hans M. Kristensen & Robert S. Norris (2018) Chinese nuclear
forces, 2018,Bulletin of the Atomic Scientists, 74:4,
289-295 <https://www.tandfonline.com/doi/pdf/10.1080/00963402.2018.1486620?needAccess=true>`__

India from `Hans M. Kristensen & Robert S. Norris (2017) Indian nuclear
forces, 2017,Bulletin of the Atomic Scientists, 73:4,
205-209 <https://www.tandfonline.com/doi/pdf/10.1080/00963402.2017.1337998?needAccess=true>`__

Israel from `Hans M. Kristensen and Robert S. Norris (2014) Israeli
nuclear weapons, 2014, Bulletin of the Atomic Scientists, 70:6,
97-115 <https://journals.sagepub.com/doi/pdf/10.1177/0096340214555409>`__

Pakistan from `Hans M. Kristensen, Robert S. Norris & Julia Diamond
(2018)Pakistani nuclear forces, 2018, Bulletin of the Atomic Scientists,
74:5,
348-358 <https://www.tandfonline.com/doi/pdf/10.1080/00963402.2018.1507796?needAccess=true>`__

North Korea from `Hans M. Kristensen & Robert S. Norris (2018) North
Korean nuclear capabilities, 2018, Bulletin of the Atomic Scientists,
74:1,
41-51 <https://www.tandfonline.com/doi/pdf/10.1080/00963402.2017.1413062?needAccess=true>`__

Examples
~~~~~~~~

::

   data(nuclearWeaponStates)
   plot(yearsSinceLastFirstTest~firstTest, 
       nuclearWeaponStates, type='h', xlab='', ylab='')
   with(nuclearWeaponStates, 
     text(firstTest, yearsSinceLastFirstTest, ctry))
