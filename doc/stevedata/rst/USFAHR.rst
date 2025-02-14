.. container::

   .. container::

      ====== ===============
      USFAHR R Documentation
      ====== ===============

      .. rubric:: U.S. Foreign Aid and Human Rights in Assorted Years
         :name: u.s.-foreign-aid-and-human-rights-in-assorted-years

      .. rubric:: Description
         :name: description

      A data set on economic aid allocation by the United States for
      assorted years. These are useful for illustrative cross-sectional
      relationships between human rights and U.S. aid allocation at what
      amounts to midway points for various presidential administrations.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         USFAHR

      .. rubric:: Format
         :name: format

      A data frame with 1654 observations on the following 18 variables.

      ``country``
         an English country name

      ``ccode``
         a Correlates of War state code

      ``region``
         a region in which the country resides, per Greenbook

      ``year``
         a year

      ``nomoblig``
         economic aid obligations in nominal U.S. dollars

      ``constoblig``
         economic aid obligations in costant 2019 U.S. dollars

      ``clphy``
         a physical violence index, bound between 0 and 1

      ``civlib``
         a civil liberties index, bound between 0 and 1

      ``fpsusa``
         foreign policy similarity with the United States

      ``fpsrus``
         foreign policy similarity with the Soviet Union/Russia

      ``mindistusa``
         minimum distance of the country from the United States

      ``mindistrus``
         minimum distance of the country from the USSR/Russia

      ``gdp``
         an estimate of GDP in constant 2011 U.S. dollars

      ``pop``
         an estimate of population size

      ``usaimp``
         a value of how much the U.S. imports from the country (in
         thousands USD)

      ``usaexp``
         a value of how much the U.S. exports to the country (in
         thousands USD)

      ``milex``
         an estimate of military expenditures (in thousands USD)

      ``cinc``
         a composite index of national capabilities

      .. rubric:: Details
         :name: details

      Matching is done on Correlates of War state codes. Thus, the exact
      "population" is an amalgam of U.S. aid and Correlates of War state
      system membership. Regions are offered, as is, from USAID Data
      Services.

      Data on aid are "obligations" and not "disbursements", and thus
      may better reflect donor intent. These come from US Overseas Loans
      & Grants ("Greenbook") and were prepared by USAID Data Services on
      July 14, 2021.

      Greenbook only offers information about dollar amounts of aid,
      contingent on receiving aid. Observations were added, based on
      Correlates of War state system membership, about countries that
      could've received aid but did not. Countries that never received
      aid at all had to have regions assigned to them ex post. I don't
      think the regions imputed for these observations are problematic.
      This concerns Andorra, Czechoslovakia, Dominica, German Democratic
      Republic, German Federal Republic, Liechtenstein, Luxembourg,
      Monaco, Nauru, Republic of Vietnam, San Marino, St. Lucia, St.
      Kitts and Nevis, Switzerland, Tuvalu, Yemen Arab Republic, Yemen
      People's Republic, and Zanzibar.

      Higher values of the physical violence index and civil liberties
      index communicate better human rights records. Data are lagged a
      year.

      Foreign policy similarity is Cohen's (1960) kappa based on valued
      United Nations General Assembly voting. Data come from Haege
      (2011) by way of peacesciencer's ``add_fpsim()`` function. Please
      read peacesciencer documentation for more information about these
      measures, along with what you should cite for any serious use of
      these data. Higher values for these measures = more foreign policy
      similarity.

      Minimum distance is calculated using the Vincenty method ("as the
      crow flies"). Measurement is in kilometers and data come from
      peacesciencer and its ``add_minimum_distance()`` function. Check
      package documentation for appropriate citation for any serious
      use.

      Estimates of gross domestic product ("GDP") and population come by
      way of peacesciencer and its ``add_sdp_gdp()`` function. Check
      package documentation for appropriate citations for any serious
      use. GDP is in actual dollars.

      Trade data come from Correlates of War trade data by way of
      peacesciencer and its ``add_cow_trade()`` function. Check package
      documentation for appropriate citations for any serious use.

      Military expenditure and capabilities data come from Correlates of
      War by way of peacesciencer and its ``add_cow_trade()`` function.
      Check package documentation for appropriate citations for any
      serious use.
