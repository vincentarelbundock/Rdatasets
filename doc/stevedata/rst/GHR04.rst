.. container::

   .. container::

      ===== ===============
      GHR04 R Documentation
      ===== ===============

      .. rubric:: Comparative Public Health: The Political Economy of
         Human Misery and Well-Being
         :name: comparative-public-health-the-political-economy-of-human-misery-and-well-being

      .. rubric:: Description
         :name: description

      This is a data set for replicating Ghobarah et al. (2004), a
      reduced form of what they make available on Dataverse for
      replication. Variables have been renamed for legibility.

      .. rubric:: Usage
         :name: usage

      ::

         GHR04

      .. rubric:: Format
         :name: format

      A data frame with 182 observations on the following 15 variables.

      ``country``
         a character vector denoting a country name

      ``iso3c``
         a three-character ISO code for the country

      ``pubhlthexppgdp``
         a numeric vector for public health expenditures as a percentage
         of GDP

      ``totexphlth``
         a numeric vector for total expenditures on health

      ``hale``
         a numeric vector for health adjusted life expectancy (in years)

      ``log_gdppc``
         a numeric vector for (log-transformed) GDP per capita

      ``gini``
         a numeric vector for income inequality

      ``log_educ``
         a numeric vector for (log-transformed) educational attainment

      ``log_vanhanen``
         a numeric vector for (log-transformed)
         racial-linguistic-religious heterogeneity

      ``rivalry``
         a dummy variable indicating the presence of an enduring
         international rivalry for the country

      ``polity``
         a numeric vector communicating a Polity score, as a measure of
         the democratic nature of the country's regime

      ``prvhlthexpgdp``
         a numeric vector for private spending on health as a percentage
         of GDP

      ``urban_growth``
         a numeric vector for the pace of urbanization

      ``cwdeaths``
         a numeric vector for civil war deaths

      ``contig_cw``
         a dummy variable communicating whether there is a civil war in
         a geographically contiguous territory

      .. rubric:: Details
         :name: details

      The three-character ISO code is the only new addition to the data.
      I add this because the country names they have in the data are not
      neat and may lead users astray if they wanted to search for a
      specific observation. The ISO code for Yugoslavia (Serbia and
      Montenegro) around this time was "SCG".

      The data the authors make available come with no .do file to
      indicate what exactly they used. Some forensic work based on the
      descriptive statistics they mention led to this reduced form of
      their data, which almost perfectly replicates their results. The
      differences are typically in the hundredths, and often in the
      thousandths, and should be considered "good enough" for
      replication purposes. The only real confusion on my end is why I
      ended up with one more observation than they report in their
      analyses. This suggests one (or more?) of their variables they use
      has an ``NA``, but I have no way of knowing what it could be.

      .. rubric:: Source
         :name: source

      Ghobarah, Hazem Adam, Paul Huth, and Bruce Russett. 2004.
      "Comparative Public Health: The Political Economy of Human Misery
      and Well-Being" International Studies Quarterly 48: 73-94
