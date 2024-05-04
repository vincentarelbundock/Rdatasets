.. container::

   .. container::

      ======== ===============
      Lipset59 R Documentation
      ======== ===============

      .. rubric:: Democracy and Economic Development (Around) 1949-50
         :name: democracy-and-economic-development-around-1949-50

      .. rubric:: Description
         :name: description

      A data set on democracy and economic development for 48 countries
      that Lipset (1959) first described.

      .. rubric:: Usage
         :name: usage

      ::

         Lipset59

      .. rubric:: Format
         :name: format

      A data frame with 48 observations on the following 11 variables.

      ``country``
         a character country for an English country name

      ``cat``
         a category for the country by their region and level of
         democracy

      ``iso3c``
         a three-character ISO code

      ``wbgdp2011est``
         an estimated gross domestic product in 2011 USD

      ``wbpopest``
         an estimated population size

      ``unpop``
         a population size (in thousands)

      ``uninc``
         a national income (in millions)

      ``unincpc``
         a national income per capita

      ``xm_qudsest``
         a "Quick UDS" estimate of democracy on a latent scale (see
         details)

      ``v2x_polyarchy``
         the Varieties of Democracy "polyarchy" estimate (see details)

      ``polity2``
         the ``polity2`` score from the Polity project (see details)

      .. rubric:: Details
         :name: details

      The three variables with the prefix of ``un`` nominally come from
      the United Nations Statistical Division for 1949/1950, but are
      actually retrieved from Andic and Peacock (1961). Andic and
      Peacock (1961) note you should be skeptical of Soviet-style
      calculations of national income and thus don't include it in the
      data they make available.

      Anything else is explicitly benchmarked to 1950 as a referent
      year. The GDP and population estimates come by way of Anders et
      al. (2020). You can manually create your own GDP per capita
      variable here because the GDP is demarcated in dollars and the
      population size is in units of 1. Take one and divide it over the
      other.

      The democracy variables are all unique in their own way. The
      "Quick UDS" estimates are generated to be latent and, globally,
      have a mean that approximates 0 and a standard deviation that
      approximates 1. In the regression context, that would mean a
      coefficient would communicate something like a magnitude change
      across a standard deviation on the scale. The "polyarchy" estimate
      has a theoretical minimum of 0 and a theoretical maximum of 1. In
      the regression context, that would mean a coefficient communicates
      a min/max effect. The Polity project estimate comes from a usual
      scale of -10 to 10 and a regression coefficient communicates
      something much less exotic. It's a unit change on this scale.

      In all cases, higher values of democracy = more "democraticness",
      for lack of a better term.

      .. rubric:: References
         :name: references

      Anders, Therese, Christopher J. Fariss, and Jonathan N. Markowitz.
      2020. "Bread Before Guns or Butter: Introducing Surplus Domestic
      Product (SDP)" *International Studies Quarterly* 64(2): 392–405.

      Andic, Suphan and Alan T. Peacock. 1961. "The International
      Distribution of Income, 1949 and 1957." *Journal of the Royal
      Statistical Society*. Series A (General) 124(2): 206-218.

      Coppedge, Michael, John Gerring, Carl Henrik Knutsen, Staffan I.
      Lindberg, Jan Teorell, David Altman, Michael Bernhard, M. Steven
      Fish, Adam Glynn, Allen Hicken, Anna Luhrmann, Kyle L. Marquardt,
      Kelly McMann, Pamela Paxton, Daniel Pemstein, Brigitte Seim,
      Rachel Sigman, Svend-Erik Skaaning, Jeffrey Staton, Agnes Cornell,
      Lisa Gastaldi, Haakon Gjerlow, Valeriya Mechkova, Johannes von
      Romer, Aksel Sundtrom, Eitan Tzelgov, Luca Uberti, Yi-ting Wang,
      Tore Wig, and Daniel Ziblatt. 2020. "V-Dem Codebook v10" Varieties
      of Democracy (V-Dem) Project.

      Lipset, Seymour Martin. 1959. "Some Social Requisites of
      Democracy: Economic Development and Political Legitimacy"
      *American Political Science Review* 53(1): 69-105.

      Marshall, Monty G., Ted Robert Gurr, and Keith Jaggers. 2017.
      "Polity IV Project: Political Regime Characteristics and
      Transitions, 1800-2017." Center for Systemic Peace.

      Marquez, Xavier, "A Quick Method for Extending the Unified
      Democracy Scores" (March 23, 2016). doi:
      `10.2139/ssrn.2753830 <https://doi.org/10.2139/ssrn.2753830>`__

      Pemstein, Daniel, Stephen Meserve, and James Melton. 2010.
      "Democratic Compromise: A Latent Variable Analysis of Ten Measures
      of Regime Type." *Political Analysis* 18(4): 426-449.
