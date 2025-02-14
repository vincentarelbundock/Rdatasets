.. container::

   .. container::

      ========== ===============
      Mitchell68 R Documentation
      ========== ===============

      .. rubric:: Inequality and Insurgency: A Statistical Study of
         South Vietnam (Mitchell, 1968)
         :name: inequality-and-insurgency-a-statistical-study-of-south-vietnam-mitchell-1968

      .. rubric:: Description
         :name: description

      A data set on the correlates of government control in 26 provinces
      in South Vietnam, to replicate a study by Mitchell (1968).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Mitchell68

      .. rubric:: Format
         :name: format

      A data frame with 26 observations on the following 9 variables.

      ``id``
         a numeric vector (a simple identifier)

      ``province``
         a character vector for the name of the province

      ``gc``
         a numeric vector for government control in the province (as a
         percent)

      ``ool``
         a numeric vector for owner-operated land (as a percent)

      ``cvlhs``
         a numeric vector for the coefficient of variation of the
         distribution of land-holdings, by size

      ``vl``
         a numeric vector for Vietnamese land, subject to transfer (as a
         percent of all land)

      ``fl``
         a numeric vector for French land, subject to transfer (as a
         percent of all land)

      ``m``
         a numeric vector for area of mobility

      ``pd``
         a numeric vector for population density (per square kilometer)

      .. rubric:: Details
         :name: details

      The data are gathered from Table 1 in the document. You should
      also read the article for more information as to what's happening
      and for what purpose. Mitchell (1968) is quite clear about where
      else he's getting these data. Much of what follows can be
      discerned in the first few pages of Mitchell (1968), which jumps
      right into a conversation about research design after a brief
      introduction.

      Province names are taken "as is" from Mitchell (1968). Since South
      Vietnam no longer exists, and these observations are about 60
      years old, some of these province names may no longer exist. You
      may have to search for some old provincial maps of the former
      Republic of Vietnam in order to understand where some of these
      provinces are/were (especially if you're interested in the
      regional variation noted by Paige (1970)).

      *Los Angeles Times* maps inform the government control variable,
      and there are assumptions that Mitchell makes about the nature of
      control by the government (South Vietnam), the Vietcong, or the
      areas that are contested. The "control" here ultimately refers to
      South Vietnam.

      The observations for government control variable are from 1965.
      Mitchell's footnote in his Table 1 says all other variables
      (except for population density) correspond with information from
      1960. The population density estimate comes from 1964.

      The coefficient of variation variable is defined as the standard
      deviation of land-holding size divided over the mean. If every
      landholding is of equal size, the observation is 0. Larger values
      suggest more variability in size of land-holdings with the
      implication being larger land-holdings are conspicuous in the
      province. It's a crude, but interesting, measure of inequality
      with that in mind.

      The owner-operated land variable is another crude, but
      interesting/novel measure. An obvious percentage, 100 implies
      complete land ownership. 0 implies universal tenancy where
      peasants work on land they do not own. Some familiarity with the
      peculiarities of South Vietnamese society at the time is strongly
      suggested.

      The "French land" and "Vietnamese land" variables refer to a
      specific agrarian reform measure ("Ordinance 57"). The Vietnam
      version includes both expropriated and redistributed land. The
      French version includes just expropriated land, per Mitchell. The
      logic is the Vietnamese version suggests higher values = lower
      inequality since the measure (partly) includes redistributed land.
      The French land, being just expropriation, has a single owner (the
      South Vietnamese government). That suggests higher inequality for
      higher values. This logic is interesting but questionable, and
      we'll just have to roll with the premise for the nature of the
      intended use of these data (i.e. replication). Paige's (1970)
      objection is more about regional variation in South Vietnam and
      its varied patterns of land use, and not about the particulars of
      these two measure (per se).

      The mobility measure is a percentage, referring to the percentage
      of the province that is composed of plains and hills without dense
      forest.

      The data are faithfully (to my level best!) scraped from Table 1
      of his article. However, the results that come from a linear model
      do not perfectly reproduce his results (Equation 2, p. 432). I
      don't know why this is the case, nor is it that important. It is
      worth noting that this kind of "step-wise" procedure he employs
      for selecting a linear model is 100% not how you should do it, and
      that 33rd footnote he includes on p. 432 would be an automatic
      rejection at any quantitatively-oriented journal today.

      It may interest the user to see re-analyses of Mitchell (1968)
      from around this time. I include those in the references for your
      consideration. Briefly, Paige's (1970) objection is that Mitchell
      (1968) includes radically different land-holding types into
      assorted measures of inequality and that Mitchell is selecting on
      1965 (a watershed moment of insurgency during the war).
      Paranzino's (1972) critique is primarily statistical, though
      incorporates some of the issues raised by Paige (1970).
      Importantly, he correctly notes what the results of the linear
      model should be (p. 567).

      .. rubric:: References
         :name: references

      Mitchell, Edward J. 1968. "Inequality and Insurgency: A
      Statistical Study of South Vietnam." *World Politics* 20(3):
      421–38.

      Paige, Jeffery M. 1970. "Inequality and Insurgency in Vietnam: A
      Re-Analysis." *World Politics* 23(1): 24–37.

      Paranzino, Dennis. 1972. "Inequality and Insurgency in Vietnam: A
      Further Re-Analysis." *World Politics* 24(2): 565–78.
