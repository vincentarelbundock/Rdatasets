.. container::

   .. container::

      =========== ===============
      ACLEDpopGDP R Documentation
      =========== ===============

      .. rubric:: ACLED countries and codes with population and GDP
         :name: acled-countries-and-codes-with-population-and-gdp

      .. rubric:: Description
         :name: description

      Countries and codes used by the `Armed Conflict Location and Event
      Data <https://en.wikipedia.org/wiki/Armed_Conflict_Location_and_Event_Data>`__
      project with population and Gross Domestic Project (``GDP``)
      numbers for recent years. Population and ``GDP`` data are from the
      World Bank when available and from other sources otherwise. When
      no World Bank data are available, numbers may be reported from the
      closest year conveniently available, as noted in ``Comments``; in
      those cases, the data may not be as accurate as the numbers from
      the World Bank.

      NOTE: This code will be offered to the maintainer of the
      ```acled.api`` <https://search.r-project.org/CRAN/refmans/acled.api/html/00Index.html>`__
      package. If they like it, it may not stay in ``Ecdat``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(ACLEDpopGDP)

      .. rubric:: Format
         :name: format

      A dataframe with ``rownames`` = ``ACLEDcountry`` containing :

      ACLEDcountry
         A character vector of the country names used by ``ACLED`` in
         the monthly totals of events and deaths between 2021-01 and
         2024-09 extracted 2024-10-24.

      ISO3
         3-character ISO 3166-1 code for ``Country``.

      WBcountry
         A character vector of the country names used by the World Bank
         (``WB``) in data extracted 2024-11-06.

      pop2020, pop2021, pop2022, pop2023, pop, GDPpcn2020, GDPpcn2021, GDPpcn2022, GDPpcn2023, GDPpcn, GDPpcp2020, GDPpcp2021, GDPpcp2022, GDPpcp2023, GDPpcp
         World Bank population and nominal Gross Domestic Product per
         capita (``GDPpc``) in constant 2015 US$ plus GDP per capita,
         PPP (constant 2021 international $) extracted 2024-11-13 for
         the indicated years unless otherwise specified in "Comments".
         For country subdivisions like Jersey, the World Bank extract
         used did not include such numbers. For those "countries",
         numbers were taken from Wikipedia and assigned to the nearest
         year in the 2020:2023 range and noted in "Comments".

      Comments
         Blank (”) if the data is from the World Bank. Otherwise, this
         lists the source of the population and GDP data, the applicable
         year, and other anomalies.

      .. rubric:: Source
         :name: source

      ```ACLED`` Explorer <https://acleddata.com/platform/explorer>`__
      was used 2024-10-24 to download monthly totals between 2021-01 and
      2024-09 of events and death in two files: one for events and
      another for deaths. Both had data on 234 "countries", though some
      were actually subdivisions. For example, ``ACLED`` "countries"
      includes the `"Bailiwick of
      Jersey" <https://en.wikipedia.org/wiki/Jersey>`__, which is a
      `"British
      Crown" <https://en.wikipedia.org/wiki/Crown_Dependencies>`__
      dependency, and the World Bank does not provide data on them as
      they do on sovereign countries.

      However, the country names used by ``ACLED`` Explorer do not match
      the country names used by the World Bank.

      This ``ACLEDpopGDP`` ``data.frame`` was created to facilitate
      merging ``ACLED`` data with data on population and ``GDP`` ...
      from the World Bank when available and from other sources when
      not.

      I got most of the ISO 3166-1 3-character country codes using
      ``grepInTable``. That function was NOT able to find country codes
      for the `Caribbean
      Netherlands <https://en.wikipedia.org/wiki/Caribbean_Netherlands>`__,
      `Christmas
      Island <https://en.wikipedia.org/wiki/Christmas_Island>`__,
      `eSwatini <https://en.wikipedia.org/wiki/Eswatini>`__, and `North
      Macedonia <https://en.wikipedia.org/wiki/North_Macedonia>`__,
      which have 3-letter ISO 3166-1 codes of ``BES``, ``CXR``, ``SWZ``,
      and ``MKD``, respectively.

      From the World Bank website, I got something by clicking
      ```DataBank`` <https://databank.worldbank.org/home.aspx>`__. From
      there, I clicked on `"Population,
      total" <https://databank.worldbank.org/indicator/SP.POP.TOTL/1ff4a498/Popular-Indicators>`__.
      This displayed numbers by country and year from 2008 to 2015. I
      clicked, "Add Time". From there I clicked "Unselect all" then
      selected 2020, 2021, 2022, and 2023. Then I clicked "x" in the
      upper right and "Apply Changes".

      Then I clicked "Add Series". From there I found that many series I
      did not want were selected, so I clicked "Unselect all", then
      selected "GDP (constant 2015 US$)" and "Population, total". Then I
      clicked "x" in the upper right and "Apply Changes" as before.

      Then I clicked "Download options" and selected "Excel". That
      downloaded a file named 'P_Popular Indicators.xlsx', which I moved
      to the working directory, read into R and merged in the obvious
      way to create most of ``ACLEDpopGDP``.

      For "Countries" not in the World Bank data I extracted, I got
      numbers from relevant Wikipedia articles and documented the source
      in ``ACLEDpopGDP[, "Comments"]``.

      .. rubric:: References
         :name: references

      `Armed Conflict Location and Event
      Data <https://en.wikipedia.org/wiki/Armed_Conflict_Location_and_Event_Data>`__

      ```DataBank`` <https://databank.worldbank.org/home.aspx>`__

      .. rubric:: See Also
         :name: see-also

      ``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
      ``Index.Observations``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # Country in World Bank data
         ACLEDpopGDP['China', ]

         # Country NOT in World Bank data
         ACLEDpopGDP['Taiwan', ]

         # Partial matching works if unique
         ACLEDpopGDP['Czech',]

         # Partial matching does NOT work if not unique
         ACLEDpopGDP['Saint', ]
         # Instead use, e.g., grep
         ACLEDpopGDP[grep('Saint', ACLEDpopGDP[, 'ACLEDcountry']), ]

         # If you know the ISO 3166-1 3-letter code:
         ACLEDpopGDP['CPV'==ACLEDpopGDP[, 'ISO3'], ]
         # NOTE: In this example, ACLEDcountry != 
         # WBcountry.  

         # No NAs in pop

         all.equal(length(which(is.na(ACLEDpopGDP$pop))), 0)


         # Only one NA in GDPpcn and GDPpcp: 
         (GDPpNA <- which(is.na(ACLEDpopGDP$GDPpcp)))
         (GDPnNA <- which(is.na(ACLEDpopGDP$GDPpcn)))
         # Antarctica: 

         all.equal(ACLEDpopGDP$ACLEDcountry[GDPpNA], 'Antarctica')



         ACLEDpopGDP[c('China', 'India'), ]
