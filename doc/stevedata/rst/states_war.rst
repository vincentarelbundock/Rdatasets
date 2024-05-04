.. container::

   .. container::

      ========== ===============
      states_war R Documentation
      ========== ===============

      .. rubric:: State Performance in Inter-State Wars
         :name: state-performance-in-inter-state-wars

      .. rubric:: Description
         :name: description

      A data set on state performance in inter-state wars. This data is
      useful for evaluating Valentino et al.'s (2010) "Bear Any Burden"
      analysis using more current data.

      .. rubric:: Usage
         :name: usage

      ::

         states_war

      .. rubric:: Format
         :name: format

      A data frame with the following variables.

      ``micnum``
         a numeric for the confrontation code

      ``ccode``
         a numeric for the Correlates of War state code

      ``stdate``
         a character vector communicating participant start date. See
         details for more.

      ``enddate``
         a character vector communicating participant start date. See
         details for more.

      ``mindur``
         a numeric vector communicating minimum duration in
         confrontation. See details for more.

      ``maxdur``
         a numeric vector communicating minimum duration in
         confrontation. See details for more.

      ``sidea``
         a numeric vector communicating whether participant was on side
         that initiated confrontation

      ``orig``
         a numeric vector communicating whether participant was in
         confrontation on day one

      ``hiact``
         a numeric vector communicating highest action during
         confrontation

      ``fatalmin``
         a numeric vector for minimum estimated fatalities for
         participant

      ``fatalmax``
         a numeric vector for maximum estimated fatalities for
         participant

      ``oppfatalmin``
         a numeric vector for minimum estimated fatalities by
         participant against opponents

      ``oppfatalmax``
         a numeric vector for maximum estimated fatalities by
         participant against opponents

      ``milex``
         an estimate of military expenditures (in thousands)

      ``milper``
         an estimate of the size of military personnel (in thousands)
         for the state

      ``cinc``
         The Composite Index of National Capability ("CINC") score

      ``tpop``
         an estimate of the total population size of the state (in
         thousands)

      ``v2x_polyarchy``
         the Varieties of Democracy "polyarchy" estimate

      ``polity2``
         the the ``polity2`` score from the Polity project

      ``xm_qudsest``
         an extension of the Unified Democracy Scores (UDS) estimates,
         made possibly by the QuickUDS package from Xavier Marquez.

      ``wbgdp2011est``
         a numeric vector for the estimated natural log of GDP in 2011
         USD (log-transformed)

      ``wbpopest``
         a numeric vector for the estimated population size
         (log-transformed)

      ``wbgdppc2011est``
         a numeric vector for the estimated GDP per capita
         (log-transformed)

      .. rubric:: Details
         :name: details

      Start date and end date are in "MM/D(D)/YYYY" format. You can
      extract this information into multiple columns with a ``separate``
      function from the tidyr package. This is mostly for convenience.
      Be mindful of two things: First, dates are dates of first and last
      action, and not necessarily the escalation to war, per se. Second,
      dates can be "missing". These are -9s, and are commonplace when
      archival research can't pinpoint an exact day something happened.

      Observations select at the *confrontation*-level where maximum
      fatalities are greater than 1,000 and at the *participant*-level
      where (1) the participant engaged in at least an attack during
      this confrontation, (2) there are no instances where a participant
      dropped in/out on the same side of a multilateral confrontation or
      switched sides, and (3) the confrontation doesn't have an instance
      where a participant incurred fatalities while themselves not
      initiating a use of force. For illustration's sake, the Taiwan
      Straits Crises saw several appearances by the United States, but
      only one instance (for six days in Feb. 1953) where the U.S.
      engaged in an attack. World War II is a classic case of
      participants switching sides (France did so three times), but it
      also happened in the War of Latvian Independence as well
      (MIC#2604). The War of Attrition also saw the Russians reappear
      twice. Cases like these aren't included, mostly for convenience
      sake. In total, 41 cases with 1,000 maximum fatalities or more at
      the confrontation-level are excluded because of this. Of these 41
      cases, World War II and the Vietnam War are the most conspicuous
      by their absence. Data come from version 1.01 of the Militarized
      Interstate Confrontation data.

      Opponent fatalities are strictly dyadic and are derived from the
      Militarized Interstate Events data.

      Capabilities, GDP, and democracy data come from peacesciencer for
      a forthcoming v. 1.2.0 release. See package for more information,
      though references are also included below. Variables are mostly
      lagged to the year prior to the participant observation year.
      However, there are several cases in the data that are born into
      war (see: India, Pakistan, North and South Korea, North and South
      Vietnam). In cases of missing data, information from the
      observation year is used.

      The ``tpop`` and ``wbpopest`` columns are measuring the same thing
      but are derived from two different data sets with two different
      data-generating procedures. Use whichever one you like, but be
      mindful of what you're doing and for what purpose you're doing it.

      .. rubric:: References
         :name: references

      Anders, Therese, Christopher J. Fariss, and Jonathan N. Markowitz.
      2020. "Bread Before Guns or Butter: Introducing Surplus Domestic
      Product (SDP)" *International Studies Quarterly* 64(2): 392–405.

      Coppedge, Michael, John Gerring, Carl Henrik Knutsen, Staffan I.
      Lindberg, Jan Teorell, David Altman, Michael Bernhard, M. Steven
      Fish, Adam Glynn, Allen Hicken, Anna Luhrmann, Kyle L. Marquardt,
      Kelly McMann, Pamela Paxton, Daniel Pemstein, Brigitte Seim,
      Rachel Sigman, Svend-Erik Skaaning, Jeffrey Staton, Agnes Cornell,
      Lisa Gastaldi, Haakon Gjerlow, Valeriya Mechkova, Johannes von
      Romer, Aksel Sundtrom, Eitan Tzelgov, Luca Uberti, Yi-ting Wang,
      Tore Wig, and Daniel Ziblatt. 2020. "V-Dem Codebook v10" Varieties
      of Democracy (V-Dem) Project.

      Gibler, Douglas M., and Steven V. Miller. Forthcoming. “The
      Militarized Interstate Events (MIE) Dataset, 1816–2014.” *Conflict
      Management and Peace Science.*

      Gibler, Douglas M., and Steven V. Miller. 2023. “The Militarized
      Interstate Confrontation Dataset, 1816-2014.” Journal of Conflict
      Resolution 68(2–3): 562–86

      Marshall, Monty G., Ted Robert Gurr, and Keith Jaggers. 2017.
      "Polity IV Project: Political Regime Characteristics and
      Transitions, 1800-2017." *Center for Systemic Peace*.

      Marquez, Xavier, "A Quick Method for Extending the Unified
      Democracy Scores" (March 23, 2016). doi:
      `10.2139/ssrn.2753830 <https://doi.org/10.2139/ssrn.2753830>`__

      Miller Steven V. 2022. “peacesciencer: An R Package for
      Quantitative Peace Science Research.” *Conflict Management and
      Peace Science*, 39(6), 755–779. doi:
      `10.1177/07388942221077926 <https://doi.org/10.1177/07388942221077926>`__

      Pemstein, Daniel, Stephen Meserve, and James Melton. 2010.
      "Democratic Compromise: A Latent Variable Analysis of Ten Measures
      of Regime Type." *Political Analysis* 18(4): 426-449.

      Singer, J. David, Stuart Bremer, and John Stuckey. (1972).
      "Capability Distribution, Uncertainty, and Major Power War,
      1820-1965." in Bruce Russett (ed) *Peace, War, and Numbers*,
      Beverly Hills: Sage, 19-48.

      Singer, J. David. 1987. "Reconstructing the Correlates of War
      Dataset on Material Capabilities of States, 1816-1985"
      *International Interactions*, 14: 115-32.

      Valentino, Benjamin A., Paul K. Huth, and Sarah E. Croco. 2010.
      "Bear Any Burden? How Democracies Minimize the Costs of War."
      *Journal of Politics* 72(2): 528-544
