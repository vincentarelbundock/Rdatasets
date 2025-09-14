.. container::

   .. container::

      =================== ===============
      nuclearWeaponStates R Documentation
      =================== ===============

      .. rubric:: Nations with nuclear weapons
         :name: nations-with-nuclear-weapons

      .. rubric:: Description
         :name: description

      Data on the 9 nuclear-weapon states as of April 2019.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(nuclearWeaponStates)

      .. rubric:: Format
         :name: format

      A dataframe containing :

      nation
         The name of the country (character). The former USSR is listed
         here as Russia.

      ctry
         `ISO
         31661- <https://en.wikipedia.org/wiki/ISO_3166-1#cite_note-iso3166-info-1>`__
         alpha-2 two-letter country codes (character).

      firstTest
         Date of first test of a nuclear weapon.

         For Israel, which has not publicly acknowledged that it has
         nuclear weapons, this uses the Date of the `Vela
         Incident <https://en.wikipedia.org/wiki/Vela_Incident>`__.

      firstTestYr
         ``lubridate::decimal_date(firstTest)``

      yearsSinceLastFirstTest
         ``c(NA, diff(firstTestYr))``

      nuclearWeapons
         number of nuclear weapons

      nYieldNA, nLowYield, nMidYield, nHighYield
         number of weapons for which the yield in ``(nYieldNA)`` =
         unknown or variable, ``(nLowYield)`` = at most 15 kt
         (kilotons), the size of the Hiroshima bomb, ``(nMidYield)`` =
         greater than 15 but less that 50 kt, and ``(nHighYield)`` = at
         least 50 kt.

      popM, popYr
         ``popM`` = estimated population in millions for year ``popYr``,
         per the Wikipedia article for the indicated country on
         2020-02-05.

      GDP_B, GDPyr
         ``GDP_B`` = nominal Gross Domestic Product in billions of US
         dollars for year ``GDPyr``, per the Wikipedia article for the
         indicated country on 2020-02-05.

      Maddison
         Country code used by the `Maddison
         Project <https://en.wikipedia.org/wiki/Maddison_Project>`__.

      startNucPgm
         Estimated date of the substantive commitment of the country to
         obtain nuclear weapons. See 'Details' below

      startNucPgmYr
         ``lubridate::decimal_date(startNucPgm)``

      .. rubric:: Details
         :name: details

      Most of the contents of this dataset are easily defined and not
      controversial. That's not true for the date upon which each
      country started its nuclear program, coded in ``startNucPgm`` and
      ``startNucPgmYr``. The following summarizes the rationale behind
      the selection of the date for each country in this dataset.

      ``US``
         The `Manhattan
         Project <https://en.wikipedia.org/wiki/Manhattan_Project>`__
         started in stages. It was officially brought to the attention
         of the US government by a letter officially from `Albert
         Einstein to US President
         Roosevelt <https://commons.wikimedia.org/wiki/File:Einstein-Roosevelt-letter.png>`__,
         1939-08-02. It was officially authorized
         `1942-01-19 <https://en.wikipedia.org/wiki/Timeline_of_the_Manhattan_Project>`__.
         We use this later date as the date of the start of the US
         nuclear-weapons program.

      ``RU``
         Russian scientists were studying uranium before the first world
         war but didn't get much official attention until the atomic
         bombing of Hiroshima, 1945-08-06. Shortly thereafter on
         `1945-08-22 <https://en.wikipedia.org/wiki/Soviet_atomic_bomb_project>`__,
         Stalin appointed `Lavrentiy
         Beria <https://en.wikipedia.org/wiki/Lavrentiy_Beria>`__. Beria
         was a able administrator and guided the project to fruition in
         four years.

      ``GB``
         British scientists were among the leaders in nuclear technology
         in the late nineteenth century. They welcomed German-Jewish
         physicists `Otto
         Frisch <https://en.wikipedia.org/wiki/Otto_Robert_Frisch>`__
         and `Rudolf
         Peierls <https://en.wikipedia.org/wiki/Rudolf_Peierls>`__, who
         estimated in 1939 that only `a few pounds or kilograms of
         uranium-235 might be enough to achieve a critical mass, whereas
         several tonnes of natural uranium would likely be
         required <https://en.wikipedia.org/wiki/Frisch-Peierls_memorandum>`__.
         Because of the war, this information was passed to scientists
         in the United States, who developed it into the bomb dropped on
         Hiroshima
         `1945-08-06 <https://en.wikipedia.org/wiki/Atomic_bombings_of_Hiroshima_and_Nagasaki>`__,
         with help from British and Canadian scientists and Canadian
         industry. After the war, the US refused to share much of the
         information developed in the Manhattan Project with the
         British. British elites felt disrespected by US. On
         `1947-01-08 <https://en.wikipedia.org/wiki/Nuclear_weapons_and_the_United_Kingdom#Resumption_of_independent_UK_efforts>`__,
         the British government decided to initiate their own
         nuclear-weapons program.

      ``FR``
         France was one of the nuclear pioneers, going back to the work
         of `Marie Curie <https://en.wikipedia.org/wiki/Marie_Curie>`__
         and `Henri
         Becquerel <https://en.wikipedia.org/wiki/Henri_Becquerel>`__ in
         the 1890s. In 1956 the French were deeply offended by the
         refusal of the US to support them in the `Suez
         Crisis <https://en.wikipedia.org/wiki/Suez_Crisis>`__. On
         `France and Israel secretly agreed to collaborate in the
         development of nuclear
         weapons <https://nuke.fas.org/guide/israel/nuke/farr.htm>`__.

      ``CN``
         `Mao Zedong reportedly decided to begin a Chinese
         nuclear-weapons
         program <https://en.wikipedia.org/wiki/China_and_weapons_of_mass_destruction#History>`__
         during the `First Taiwan Strait Crisis of
         1954–1955 <https://en.wikipedia.org/wiki/First_Taiwan_Strait_Crisis#Aftermath:_China_and_nuclear_weapons>`__.
         That crisis was resolved shortly after
         `1955-04-23 <https://en.wikipedia.org/wiki/First_Taiwan_Strait_Crisis#Aftermath:_China_and_nuclear_weapons>`__,
         when China stated it was willing to negotiate. We use this as
         the date of the start of China's nuclear weapons program.

      ``IN``
         Indian scientists started research on nuclear weapons before
         Indian independence but didn't make a substantive commitment to
         actually making a nuclear weapon until they lost territory to
         China in the `Sino-Indian
         War <https://en.wikipedia.org/wiki/Sino-Indian_War>`__ that
         ended 1962-11-21. We use that date as the date for the
         initiation of India's nuclear-weapons program.

      ``IL``
         Israel's first Prime Minister David Ben-Gurion was reportedly
         "nearly obsessed" with obtaining nuclear weapons to prevent the
         Holocaust from recurring. For present purposes, we use
         1949-03-10, the date of the end of the `1948 Arab–Israeli
         War <https://en.wikipedia.org/wiki/1948_Arab-Israeli_War>`__,
         as the beginning of Israel's nuclear-weapons program.

      ``PK``
         Pakistan's elite were totally humiliated by their defeat in the
         `Indo-Pakistani War of
         1971 <https://en.wikipedia.org/wiki/Indo-Pakistani_War_of_1971>`__,
         1971-12-03 / -16: That war ended the `Bangladesh Liberation
         War <https://en.wikipedia.org/wiki/Bangladesh_Liberation_War>`__,
         by which Pakistan lost over half their population and 14
         percent of their land area. Prime Minister Zulfiqar Ali Bhutto
         compared Pakistan's surrender to the Treaty of Versailles,
         which Germany was forced to sign in 1919. Bhutto observed
         1972-01-20 that a Pakistani scientist had been part of the
         Manhattan Project, and Pakistani scientists could do the same
         in Pakistan. While significant funding seemed not to have come
         until later, 1972-01-20 is the date we will use here for the
         beginning of Pakistan's nuclear-weapons program.

      ``KP``
         The 1950-1953 Korean War ended with a cease-fire, not an
         official end to hostilities. Since then North Korea has
         perceived nuclear threats from the US. In 1956 the Soviet Union
         began giving North Korean scientists and engineers "basic
         knowledge" to help them initiate a nuclear program. About 1962,
         `North Korea committed itself to what it called
         "all-fortressization" <https://www.washingtonpost.com/news/monkey-cage/wp/2016/02/18/these-5-things-help-make-sense-of-north-koreas-nuclear-tests-and-missile-launch/>`__,
         which was the beginning of the hyper-militarized North Korea of
         today. North Korea reportedly asked the Soviet Union for help
         with a nuclear weapons program in 1963 and was turned down.
         China turned down similar requests in 1964 and 1974. Around
         1980 North Korea began mining its own supplies of uranium and
         building its own factory to produce
         `yellowcake <https://en.wikipedia.org/wiki/Yellowcake>`__. (See
         also Bolton, 2012.) For lack of something better, we use
         1980-01-01 as the start of North Korea's nuclear weapons
         program. They clearly wanted nuclear weapons much earlier but
         didn't seem to move seriously in the direction of developing
         nuclear weapons until around

      .. rubric:: Source
         :name: source

      Overview from `World Nuclear Weapon
      Stockpile <https://www.ploughshares.org/world-nuclear-stockpile-report>`__

      ``firstTest`` from `Wikipedia, "List of states with nuclear
      weapons" <https://en.wikipedia.org/wiki/List_of_states_with_nuclear_weapons>`__

      US from Hans M. Kristensen & Robert S. Norris (2018) United States
      nuclear forces,2018, Bulletin of the Atomic Scientists, 74:2,
      120-131,
      `doi:10.1080/00963402.2018.1438219 <https://doi.org/10.1080/00963402.2018.1438219>`__

      Russia from Hans M. Kristensen & Matt Korda (2019) Russian nuclear
      forces, 2019, Bulletin of the Atomic Scientists, 75:2, 73-84,
      `doi:10.1080/00963402.2019.1580891 <https://doi.org/10.1080/00963402.2019.1580891>`__

      UK from Robert S. Norris and Hans M. Kristensen (2013) The British
      nuclear stockpile, 1953-2013, Bulletin of the Atomic Scientists,
      69:4, 69-75s,
      `doi:10.1177/0096340213493260 <https://doi.org/10.1177/0096340213493260>`__

      France from Robert S. Norris & Hans M. Kristensen (2008) French
      nuclear forces, 2008, Bulletin of the Atomic Scientists, 64:4,
      52-54, 57,
      `doi:10.2968/064004012 <https://doi.org/10.2968/064004012>`__

      China from Hans M. Kristensen & Robert S. Norris (2018) Chinese
      nuclear forces, 2018,Bulletin of the Atomic Scientists, 74:4,
      289-295,
      `doi:10.1080/00963402.2018.1486620 <https://doi.org/10.1080/00963402.2018.1486620>`__

      India from Hans M. Kristensen & Robert S. Norris (2017) Indian
      nuclear forces, 2017,Bulletin of the Atomic Scientists, 73:4,
      205-209,
      `doi:10.1080/00963402.2017.1337998 <https://doi.org/10.1080/00963402.2017.1337998>`__

      Israel from Hans M. Kristensen and Robert S. Norris (2014) Israeli
      nuclear weapons, 2014, Bulletin of the Atomic Scientists, 70:6,
      97-115,
      `doi:10.1177/0096340214555409 <https://doi.org/10.1177/0096340214555409>`__

      Pakistan from Hans M. Kristensen, Robert S. Norris & Julia Diamond
      (2018)Pakistani nuclear forces, 2018, Bulletin of the Atomic
      Scientists, 74:5, 348-358,
      `doi:10.1080/00963402.2018.1507796 <https://doi.org/10.1080/00963402.2018.1507796>`__

      North Korea from Hans M. Kristensen & Robert S. Norris (2018)
      North Korean nuclear capabilities, 2018, Bulletin of the Atomic
      Scientists, 74:1, 41-51,
      `doi:10.1080/00963402.2017.1413062 <https://doi.org/10.1080/00963402.2017.1413062>`__

      Derek Bolton (2012) North Korea's Nuclear Program (2012-08,
      American Security Program, accessed 2020-07-15)
      https://www.americansecurityproject.org/ASP%20Reports/Ref%200072%20-%20North%20Korea%E2%80%99s%20Nuclear%20Program%20.pdf

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(nuclearWeaponStates)
         plot(yearsSinceLastFirstTest~firstTest, 
             nuclearWeaponStates, type='h', xlab='', ylab='')
         with(nuclearWeaponStates, 
           text(firstTest, yearsSinceLastFirstTest, ctry))
