.. container::

   .. container::

      ======== ===============
      Quarrels R Documentation
      ======== ===============

      .. rubric:: Statistics of Deadly Quarrels
         :name: statistics-of-deadly-quarrels

      .. rubric:: Description
         :name: description

      *The Statistics Of Deadly Quarrels* by Lewis Fry Richardson (1960)
      is one of the earlier attempts at quantification of historical
      conflict behavior.

      The data set contains 779 dyadic deadly quarrels that cover a time
      period from 1809 to 1949. A quarrel consists of one pair of
      belligerents, and is identified by its beginning date and
      magnitude (log 10 of the number of deaths). Neither actor in a
      quarrel is identified by name.

      Because Richardson took a dyad of belligerents as his unit, a
      given war, such as World War I or World War II comprises multiple
      observations, for all pairs of belligerents. For example, there
      are forty-four pairs of belligerents coded for World War I.

      For each quarrel, the nominal variables include the type of
      quarrel, as well as political, cultural, and economic similarities
      and dissimilarities between the pair of combatants.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Quarrels)

      .. rubric:: Format
         :name: format

      A data frame with 779 observations on the following 84 variables.

      ``ID``
         V84: Id sequence

      ``year``
         V1: Begin date of quarrel

      ``international``
         V2: Nation vs nation

      ``colonial``
         V3: Nation vs colony

      ``revolution``
         V4: Revolution or civil war

      ``nat.grp``
         V5: Nation vs gp in other nation

      ``grp.grpSame``
         V6: Grp vs grp (same nation)

      ``grp.grpDif``
         V7: Grp vs grp (between nations)

      ``numGroups``
         V8: Number groups against which fighting

      ``months``
         V9: Number months fighting

      ``pairs``
         V10: Number pairs in whole matrix

      ``monthsPairs``
         V11: Num mons for all in matrix

      ``logDeaths``
         V12: Log (killed) matrix

      ``deaths``
         V13: Total killed for matrix

      ``exchangeGoods``
         V14: Gp sent goods to other

      ``obstacleGoods``
         V15: Gp puts obstacles to goods

      ``intermarriageOK``
         V16: Present intermarriages

      ``intermarriageBan``
         V17: Intermarriages banned

      ``simBody``
         V18: Similar body characteristics

      ``difBody``
         V19: Difference in body characteristics

      ``simDress``
         V20: Similarity of customs (dress)

      ``difDress``
         V21: Difference of customs (dress)

      ``eqWealth``
         V22: Common level of wealth

      ``difWealth``
         V23: Difference in wealth

      ``simMariagCust``
         V24: Similar marriage cusomst

      ``difMariagCust``
         V25: Different marriage customs

      ``simRelig``
         V26: Similar religion or philosophy of life

      ``difRelig``
         V27: Religion or philosophy felt different

      ``philanthropy``
         V28: General philanthropy

      ``restrictMigration``
         V29: Restricted immigrations

      ``sameLanguage``
         V30: Common mother tongue

      ``difLanguage``
         V31: Different languages

      ``simArtSci``
         V32: Similar science, arts

      ``travel``
         V33: Travel

      ``ignorance``
         V34: Ignorant of other/both

      ``simPersLiberty``
         V35: Personal liberty similar

      ``difPersLiberty``
         V36: More personal liberty

      ``sameGov``
         V37: Common government

      ``sameGovYrs``
         V38: Years since common govt established

      ``prevConflict``
         V39: Belligerents fought previously

      ``prevConflictYrs``
         V40: Years since belligerents fought

      ``chronicFighting``
         V41: Chronic fighting between belligerents

      ``persFriendship``
         V42: Autocrats personal friends

      ``persResentment``
         V43: Leaders personal resentment

      ``difLegal``
         V44: Annoyingly different legal systems

      ``nonintervention``
         V45: Policy of nonintervention

      ``thirdParty``
         V46: Led by 3rd group to conflict

      ``supportEnemy``
         V47: Supported others enemy

      ``attackAlly``
         V48: Attacked ally of other

      ``rivalsLand``
         V49: Rivals territory concess

      ``rivalsTrade``
         V50: Rivals trade

      ``churchPower``
         V51: Church civil power

      ``noExtension``
         V52: Policy not extending term

      ``territory``
         V53: Desired territory

      ``habitation``
         V54: Wanted habitation

      ``minerals``
         V55: Desired minerals

      ``StrongHold``
         V56: Wanted strategic stronghold

      ``taxation``
         V57: Taxed other

      ``loot``
         V58: Wanted loot

      ``objectedWar``
         V59: Objected to war

      ``enjoyFight``
         V60: Enjoyed fighting

      ``pride``
         V61: Elated by strong pride

      ``overpopulated``
         V62: Insufficient land for population

      ``fightForPay``
         V63: Fought only for pay

      ``joinWinner``
         V64: Desired to join winners

      ``otherDesiredWar``
         V65: Quarrel desired by other

      ``propaganda3rd``
         V66: Issued of propaganda to third parties

      ``protection``
         V67: Offered protection

      ``sympathy``
         V68: Sympathized under control

      ``debt``
         V69: Owed money to others

      ``prevAllies``
         V70: Had fought as allies

      ``yearsAllies``
         V71: Years since fought as allies

      ``intermingled``
         V72: Had intermingled on territory

      ``interbreeding``
         V73: Interbreeding between groups

      ``propadanda``
         V74: Issued propaganda to other group

      ``orderedObey``
         V75: Ordered other to obey

      ``commerceOther``
         V76: Commercial enterprises

      ``feltStronger``
         V77: Felt stronger

      ``competeIntellect``
         V78: Competed successfully intellectual occ

      ``insecureGovt``
         V79: Government insecure

      ``prepWar``
         V80: Preparations for war

      ``RegionalError``
         V81: Regional error measure

      ``CasualtyError``
         V82: Casualty error measure

      ``Auxiliaries``
         V83: Auxiliaries in service of nation at war

      .. rubric:: Details
         :name: details

      In the original data set obtained from ICPSR, variables were named
      ``V1``-``V84``. These were renamed to make them more meaningful.
      ``V84``, renamed ``ID`` was moved to the first position, but
      otherwise the order of variables is the same.

      In many of the ``factor`` variables, ``0`` is used to indicate
      "irrelevant to quarrel". This refers to those relations that
      Richardson found absent or irrelevant to the particular quarrel,
      and did not subsequently mention.

      See the original codebook at
      http://www.icpsr.umich.edu/cgi-bin/file?comp=none&study=5407&ds=1&file_id=652814
      for details not contained here.

      .. rubric:: Source
         :name: source

      http://www.icpsr.umich.edu/icpsrweb/ICPSR/studies/05407

      .. rubric:: References
         :name: references

      Lewis F. Richardson, (1960). *The Statistics Of Deadly Quarrels*.
      (Edited by Q. Wright and C. C. Lienau). Pittsburgh: Boxwood Press.

      Rummel, Rudolph J. (1967), "Dimensions of Dyadic War, 1820-1952."
      *Journal of Conflict Resolution*. 11, (2), 176 - 183.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Quarrels)
         str(Quarrels)
