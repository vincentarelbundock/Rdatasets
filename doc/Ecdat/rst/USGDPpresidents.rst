.. container::

   .. container::

      =============== ===============
      USGDPpresidents R Documentation
      =============== ===============

      .. rubric:: US GDP per capita with presidents and wars
         :name: us-gdp-per-capita-with-presidents-and-wars

      .. rubric:: Description
         :name: description

      It is commonly claimed that Franklin Roosevelt (FDR) did not end
      the Great Depression: World War II (WW2) did. This is supported by
      the 10.6 percent growth per year in real Gross Domestic Product
      (GDP) per capita seen in the standard GDP estimates from 1940 to
      1945. It is also supported by the rapid decline in unemployment
      during the war.

      However, no comparable growth spurts in GDP per capita catch the
      eye in a plot of ``log(GDP per capita)`` from 1790 to 2024,
      whether associated with a war or not, using data from Measuring
      Worth. The only other features of that plot that seem visually
      comparable are the economic disaster of Herbert Hoover's
      presidency (when GDP per capital fell by 10 percent per year,
      1929-1932), the impressive growth of the US economy during the
      first seven years of Franklin Roosevelt's presidency (6.4 percent
      per year, 1933-1940), and the post-World War II recession (when
      GDP per capita fell by 7.9 percent per year, 1945-1947). (NOTE:
      The web site for Measuring Worth, ``https://measuringworth.com/``
      still works, but has not always been maintained to current
      internet security standards. Therefore, the link is provided here
      in text but not as a link.)

      Closer inspection of this plot suggests that the US economy has
      generally grown faster after FDR than before. This might plausibly
      be attributed to `"The Keynesian Ascendancy
      1939-1979" <https://en.wikipedia.org/wiki/John_Maynard_Keynes>`__.

      Unemployment dropped during the First World War as it did during
      WW2. Comparable unemployment data are not available for the U.S.
      during other major wars, most notably the `American Civil
      War <https://en.wikipedia.org/wiki/American_Civil_War>`__ and the
      `Mexican-American
      War <https://en.wikipedia.org/wiki/Mexican-American_War>`__.

      This data set provides a platform for testing the effects of
      presidency, war, and Keynes. It does this by combining the numbers
      for US population and real GDP per capital dollars from Measuring
      Worth with the presidency and a list of major wars and an estimate
      of the battle deaths by year per million population. (As noted
      above, the web address for measuring worth,
      ``https://measuringworth.com/``, often gives security warnings but
      still seems to provide the data as before.)

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(USGDPpresidents)

      .. rubric:: Format
         :name: format

      A ``data.frame`` containing 259 observations on the following
      variables:

      Year
         integer: the year, ``c(seq(1610, 1770, 10), 1774:2024)``

      CPI
         Numeric: U. S. Consumer Price Index per Officer and Williamson
         (2022), starting in 1774. Average 1982-84 = 100.

      GDPdeflator
         numeric: Implicit price deflators for Gross Domestic Product
         with 2017 = 100 per Williamson (2025).

      population.K
         integer: US population in thousands.

         Population figures for 1610 to 1780 came from Springston
         (2013). The rest came from Johnston and Williamson. (The early
         population figures reflect only the European settlers in the
         British colonies that eventually became the US.)

      realGDPperCapita
         numeric: real Gross Domestic Product (GDP) per capita in 2017
         dollars since 1790.

         Real ``GDP`` = ``population.K*realGDPperCapita``, in thousands.

         Current or nominal ``GDPperCapita`` =
         ``realGDPperCapita*GDPdeflator/100``.

      executive
         ``ordered``: Crown of England through 1774, followed by the
         ``"ContinentalCongress"`` and the ``"ArticlesOfConfederation"``
         until Washington, who became President under the current base
         constitution in 1789. Two nineteenth century presidents are not
         listed here (William Henry Harrison and James A. Garfield),
         because they died so soon after inauguration that any
         contribution they made to the economic growth of the nation
         might seem too slight to measure accurately in annual data like
         this; their contributions therefore appear combined with their
         replacements (John Tyler and Chester A. Arthur, respectively).
         The service of two other presidents is officially combined
         here: "Taylor-Fillmore" refers to the 16 months served by
         Zachary Taylor with the 32 months of Millard Fillmore. These
         modifications make `Barack
         Obama <https://en.wikipedia.org/wiki/Barack_Obama>`__ number 41
         on this list, even though he's the 44th president of the U.S.

      war
         ``ordered``: This lists the major wars in US history by years
         involving active hostilities. A war is "major" for present
         purposes if it met two criteria:

         (1) It averaged at least 10 battle deaths per year per million
         US population.

         (2) It was listed in one of two lists of wars: For wars since
         1816, it must have appeared in the `Correlates of
         War <https://correlatesofwar.org/>`__. For wars between 1790
         and 1815, it must have appeared in the Wikipedia `"List of wars
         involving the United
         States" <https://en.wikipedia.org/wiki/List_of_wars_involving_the_United_States>`__.

         The resulting list includes a few adjustments to the list of
         wars that might come readily to mind for people moderately
         familiar with US history.

         A traditional list might start with the American Revolution,
         the War of 1812, the Mexican-American war, the Civil War, the
         Spanish-American war, World Wars I and II, Korea, and Vietnam.
         In addition, the `Northwest Indian
         War <https://en.wikipedia.org/wiki/Northwest_Indian_War>`__
         involved very roughly 30 battle deaths per year per million
         population 1785-1795. This compares with the roughly 100 battle
         deaths per year 1812-1815 for the `War of
         1812 <https://en.wikipedia.org/wiki/War_of_1812>`__.

         For present purposes, the Spanish-American War is combined with
         the lesser-known American-Philippine War: The latter involved
         50 percent more battle deaths but over a longer period of time
         and arguably with less impact on the stature of the US as a
         growing world power. However, its magnitude suggest it might
         have impacted the US economy in a way roughly comparable to the
         Spanish-American war. The two are therefore listed here
         together as "Spanish-American-Philippine" war.

         `The Correlates of War (COW) <https://correlatesofwar.org/>`__
         data include multiple US uses of military force during the
         Vietnam War era. It starts with "Vietnam Phase 1", 1961-65,
         with 506 battle deaths in the COW data base. It includes the
         "Second Laotian" war phases 1 and 2, plus engagement with a
         "Communist Coalition" and Khmer Rouge as well as actions in the
         Dominican Republic and Guatemala. The current ``data.frame``
         includes only "Vietnam", referring primarily to COW's "Vietnam
         War, Phase 2", 1965-1973. The associated battle deaths include
         battle deaths from these other, lesser concurrent conflicts.

         The COW data currently ends in 2007. However, the post-2000
         conflicts in Afghanistan and Iraq averaged less than 1,000
         battle deaths per year or roughly 3 battle deaths per year per
         million population. This is below the threshold of 10 battle
         deaths per year per million population. This in turn suggests
         that any impact of those conflicts on the US economy might be
         small and difficult to estimate.

      battleDeaths
         numeric: Numbers of battle deaths by year estimated by
         allocating to the different years the totals reported for each
         major war in proportion to the number of days officially in
         conflict each year. The totals were obtained (in
         August-September 2015) from `The Correlates of
         War <https://correlatesofwar.org/>`__ data for conflicts since
         1816 and from Wikipedia for previous wars back to 1774, as
         noted above.

      battleDeathsPMP
         numeric: battle deaths per million population =
         ``1000*battleDeaths/population.K``.

      Keynes
         integer taking the value 1 between 1939 and 1979 and 0
         otherwise, as suggested by the section entitled "The Keynesian
         Ascendancy 1939-1979" in the Wikipedia article on `John Maynard
         Keynes <https://en.wikipedia.org/wiki/John_Maynard_Keynes>`__.

      unemployment
         Estimated US unemployment rate in percent per the sources cited
         in the `Historical unemployment rate
         charts <https://en.wikipedia.org/wiki/Unemployment_in_the_United_States#Historical_unemployment_rate_charts>`__
         section of the Wikipedia article on `Unemployment in the United
         States <https://en.wikipedia.org/wiki/Unemployment_in_the_United_States>`__
         .

      unempSource
         ``ordered`` giving the source for US unemployment:

         1610-1799
            ``<NA>``

         1800-1889
            Lebergott

         1890-1929
            Romer

         1930-1939
            Coen

         1940-present
            BLS

         Clearly, the more recent numbers should be more accurate.

      fedReceipts, fedOutlays, fedSurplus
         Receipts and Outlays of the US federal government in millions
         of current dollars.

         For data beginning with 1901, these are from the US federal
         budget from The White House (2022). Earlier data are from
         series Y 335-337 in US Census Bureau (1975). As of 2022-02-22
         the data from The White House included aggregations for
         1789-1849 and 1850-1900, which matched the totals of Y 335-337
         for those two sets of years. The numbers from 1901 to 1933 are
         the same in both sources.

         On 2022-02-22, we used The White House (2022) for the more
         recent numbers with one exception: Between 1976 and 1977 the
         fiscal year was changed from starting July 1 to October 1.
         July, August, and September, 1976, is called the "transitional
         quarter", and has been deleted from this dataset.

         On 2025-01-22, the comparable data was found on a different web
         address but seemed to be largely the same except that it said
         it was updated to 2023-03-28, just over a month after the
         previous update. That gave data starting in 2022 as
         "estimates". Since we could not find better numbers, we used
         those.

         NOTES:

         The numbers for 1843 are for only the first half of the year,
         January 1 through June 30. This explains why the numbers for
         1843 are only roughly half of the corresponding values for 1844
         and 1845.

         Also, the numbers for 1791 are actually for 1789-1791. However,
         those numbers seem comparable to those for 1792 and 1793, so it
         is listed as only for one year rather than three.

      fedDebt
         US federal government debt in current dollars per
         ``FiscalData`` (2025). This matches Y 338 in United States
         Census Bureau (1975) 1921-1939 but not earlier, and Y 338 ends
         with 1939. Between 1921 and 1939 these numbers are as of June
         30. Between 1843 and 1920 they are as of July 1. The earlier
         numbers are as of January 1.

         These numbers are NOT a simple ``cumsum`` of ``fedSurplus``.
         It's not clear the sources of the discrepancies, but the
         following seem likely: First, the published budget may not
         include interest on the national debt. Second, there are likely
         expenditures / outlays that are "Off-budget" and perhaps
         otherwise hidden from the public.

         ``FiscalData`` (2025) includes debt for both January 1 (20
         million) and July 1 (33 million) for 1843. For present
         purposes, we omit the January 1 number. This overstates the
         volatility of the national debt during that period, showing it
         rising from 14 million in 1842 (January 1) to 33 million in
         1843 (July 1), being 18 not 12 months. The alternative would be
         to delete the 33 million, but that would understate the
         volatility of the debt during that period.

         Prior to 1844, the national debt was reported for January 1.
         Between 1843 and 1920, it was reported for July 1. From 1921 to
         1976, it was reported for June 28, 29 or 30, usually for June
         30; four years in that period it was reported for June 29 and
         once for June 28. Since 1977, it has been reported for
         September 28, 29 or 30, usually for September 30, only once for
         September 28 and once for September 29.

      fedReceipts_pGDP, fedOutlays_pGDP, fedSurplus_pGDP, fedDebt_pGDP
         numeric = ``fedReceipts``, ``fedOutlays``, ``fedSurplus``, and
         ``fedDebt`` as a portion of GDP, which is
         ``population.K * realGPDperCapita / (.01*GDPdeflator)``.

         For the single year 1843, ``fedReceipts``, ``fedOutlays``, and
         ``fedSurplus`` were for only the first six months; to compute
         ``*_pGDP`` for these numbers for 1843 only, the denominator was
         cut in half.

      .. rubric:: Details
         :name: details

      ``rownames(USGDPpresidents) = Year``

      .. rubric:: Author(s)
         :name: authors

      Spencer Graves

      .. rubric:: Source
         :name: source

      Robert M. Coen (1973) Labor Force and Unemployment in the 1920's
      and 1930's: A Re-Examination Based on Postwar Experience", The
      Review of Economics and Statistics, 55(1): 46-55.

      ``FiscalData`` (2024) `"Historical Debt
      Outstanding" <https://fiscaldata.treasury.gov/datasets/historical-debt-outstanding/historical-debt-outstanding>`__,
      accessed 2025-01-22.

      Louis Johnston and Samuel H. Williamson, "What Was the U.S. GDP
      Then?", Measuring Worth, accessed 2022-02-22. (NOTE: This came
      from ``https://www.measuringworth.org/usgdp/``. this web link
      generally works as of 2022-02-22. However, in the past it has
      sometimes returned a warning, e.g., "SSL certificate problem". The
      web site seems to be good but not maintained to current security
      standards.)

      Stanley Lebergott (1964). Manpower in Economic Growth: The
      American Record since 1800. Pages 164-190. New York: McGraw-Hill.
      Cited from `Wikipedia, "Unemployment in the United
      States" <https://en.wikipedia.org/wiki/Unemployment_in_the_United_States#Historical_unemployment_rate_charts>`__,
      accessed 2016-07-08.

      Lawrence H Officer and Samuel H. Williamson, 'The Annual Consumer
      Price Index for the United States, 1774-Present,' MeasuringWorth,
      2022-02-22.

      Christina Romer (1986). "Spurious Volatility in Historical
      Unemployment Data", The Journal of Political Economy, 94(1): 1-37.

      Sarkees, Meredith Reid; Wayman, Frank (2010). `"The Correlates of
      War Project: COW War Data, 1816 - 2007
      (v4.0)" <https://correlatesofwar.org/data-sets/COW-war/>`__,
      accessed 2015-09-02.

      The White House (2022). `On 2025-08-22, I saw "Historical Tables"
      in 3 places on that
      page. <https://www.whitehouse.gov/omb/information-resources/budget/historical-tables/>`__
      I clicked on the bottom one and got, "BUDGET-2026-HIST.xlsx". The
      file I got doing this on 2025-01-22 included "Table 1.1-Summary of
      Receipts, Outlays, and Surpluses or Deficits (-): 1789-2026"
      included budget forecasts. The version of this table I got
      2025-08-22 included data through 2024 but no forecasts.

      United States Census Bureau (1975) `Bicentennial Edition:
      Historical Statistics of the United States, Colonial Times to
      1970 <https://www.census.gov/library/publications/1975/compendia/hist_stats_colonial-1970.html>`__,
      Part 2. Chapter Y. Government, accessed 2022-02-22.

      Wikipedia, `"List of wars involving the United
      States" <https://en.wikipedia.org/wiki/List_of_wars_involving_the_United_States>`__,
      accessed 2015-09-13.

      `Wikipedia, "Unemployment in the United
      States" <https://en.wikipedia.org/wiki/Unemployment_in_the_United_States#Historical_unemployment_rate_charts>`__.
      See also
      https://en.wikipedia.org/wiki/User_talk:Peace01234#Unemployment_Data.
      Accessed 2016-07-08.

      The unemployment data since 1940 are from series ``LNS14000000``
      from the Current Population Survey. These data are available as a
      monthly series from the `Current Population Survey of the Bureau
      of Labor Statistics <https://www.bls.gov/cps/>`__.

      `Chuck Springston, "Population of the 13 Colonies 1610-1790",
      October 28,
      2013 <https://web.archive.org/web/20210216112807/http://www.yttwebzine.com/yesterday/2013/10/28/75757/population_13_colonies_chart>`__

      `Samuel H. Williamson, "What Was the U.S. GDP Then?"
      MeasuringWorth,
      2025 <https://www.measuringworth.com/datasets/usgdp/>`__

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(USGDPpresidents)
         ##
         ## FUNCTION TO plot GDP, Presidents and Wars 
         ## 
         plotUSGPDpresidents <- function(y, Ylab, Scale=1, 
                 Ylim=NA, Log='y', x='Year', Xmin=NA, Type='l', 
                 epocs = c(1929, 1933, 1945), epocy=c(.2, .8), 
                 epocNames = c('Hoover', 'FDR'), epocex=c(0.9, 1.1), 
                 war='war', warShade=c(lty='dotted', col='grey'), 
                 Data=USGDPpresidents, ...){
           ##
           ## 1. y
           ##
           Y <- (Scale* Data[, y])
           if(any(is.na(Ylim))){
             if(is.na(Ylim[1])) {
               if(length(grep('y',Log)>0)){
                 Y0 <- (Y<=0)
                 n0 <- sum(Y0, na.rm=TRUE)
                 if(n0>0){
                   cat(n0, ' nonpositive observations ignored/n')
                   Y[Y0] <- NA
                 }
               } 
               Ylim[1] <- min(Y, na.rm=TRUE)
             }
             if(length(Ylim)<2 || is.na(Ylim[2])){
               Ylim[2] <- max(Y, na.rm=TRUE)
             }
           }
           ##
           ## 2. Xmin > Xlim
           ##
           if(is.na(Xmin)){
             imin <- which.max(!is.na(Y))
             Xmin <- Data[imin, x]
           }
           Xlim <- c(Xmin, max(Data[, x]))
           ##
           ## 3. plot
           ##
           plot(Data[, x], Y, log=Log, type=Type, 
                xlim=Xlim, xlab='', ylim=Ylim,
                ylab=Ylab, las=1, ...)  
           ##
           ## 4. epocs
           ##
           abline(v=epocs, lty='dashed')
           if(length(grep('y',Log)>0)){
             lYlim <- log(Ylim)
             yep <- exp(epocy*lYlim[1]+(1-epocy)*lYlim[2])
           } else {
             yep <- (epocy*Ylim[1]+(1-epocy)*Ylim[2])
           }
           for(i in 1:length(epocy)){
             ix <- mean(epocs[i+0:1])
             text(ix, yep[i], epocNames[i], srt=90, 
                  cex=epocex[i])
           }
           ##
           ## 5. wars
           ##
           if(!is.null(war) && !is.na(war) &&
              !is.na(match(war, names(Data))))  {
             selWar <- (Data[, war]!='')
             abline(v=Data[selWar, x], lty=warShade['lty'], 
                    col=warShade['col'])
           }
         }
         ##
         ##** Plot the first four variables
         ##
         plotUSGPDpresidents('CPI', Ylab='Consumer Price Index')
         plotUSGPDpresidents('GDPdeflator', Ylab='GDP deflator')
         plotUSGPDpresidents('population.K', Ylab='population (M)', 
                            Scale=0.001)
         plotUSGPDpresidents('realGDPperCapita', 
                            Ylab='GDP per capita (2017K$)', Scale=0.001)

         ##
         ##** Table exective and war
         ##
         table(USGDPpresidents[, 'executive'])
         table(USGDPpresidents[, 'war'])

         ##
         ##** plot battleDeaths 
         ##** battledeathsPMP = per million population
         ##
         plotUSGPDpresidents('battleDeaths', Ylab='battle deaths (K)', 
                            Scale=0.001, lwd=3)

         (MAw <- grep('Mex', USGDPpresidents[, 'war']))
         USGDPpresidents[MAw,]

         plotUSGPDpresidents('battleDeathsPMP', 
                            Ylab='battle deaths per million pop', lwd=3)
         ##
         ##** plot Keynes
         ##
         plotUSGPDpresidents('Keynes', Log='', Ylab='Keynes')
         selKeynes <- (USGDPpresidents[, 'Keynes']==1)
         range(USGDPpresidents[selKeynes, 'Year'])
         ##
         ##** plot unemployment
         ##
         plotUSGPDpresidents('unemployment', Ylab='unemployment (%)')
         # Estimated US unemployment rate in percent
         # per the sources cited in the section on 
         # "Historical unemployment rate charts"
         # in the Wikipedia article on 
         # "Unemployment in the United States"

         # table unemployment source
         table(USGDPpresidents[, 'unempSource'])

         ##
         ##** plot budget analyses
         ##
         plotUSGPDpresidents('fedReceipts', Ylab="fed receipts ($M)")
         plotUSGPDpresidents("fedReceipts", Ylab="fed receipts ($B)", 
                            Scale=0.001)
         abline(h=1)
         plotUSGPDpresidents("fedOutlays", Ylab="fed outlays ($B)", 
                            Scale=0.001)
         abline(h=1)

         plotUSGPDpresidents("fedSurplus", Ylab="fed outlays ($B)",
                            Log='', Scale=0.001)

         Surplus <- with(USGDPpresidents, fedReceipts - fedOutlays)

         rSurp <- with(USGDPpresidents, fedSurplus/Surplus)
         plot(USGDPpresidents[, 'Year'], rSurp)
         # Discrepancies less than 1 percent

         plotUSGPDpresidents('fedDebt', 'fed debt ($B)',
                            Scale=1e-9)

         plotUSGPDpresidents('fedReceipts_pGDP', 
                            'fed receipts % of GDP', Scale=100)
         plotUSGPDpresidents('fedOutlays_pGDP', 
                            'fed outlays % of GDP', Scale=100)
         plotUSGPDpresidents('fedSurplus_pGDP', 
                            'fed surplus % of GDP', Scale=100, Log='')

         plotUSGPDpresidents('fedDebt_pGDP', 
                            'fed debt % of GDP', Scale=100)
         (debtPrng <- range(USGDPpresidents[, 'fedDebt_pGDP'], na.rm=TRUE))
         plotUSGPDpresidents('fedDebt_pGDP', 
                            'fed debt % of GDP', Scale=100, 
                            Ylim=c(1, 100*debtPrng[2]))
         abline(h=100)
