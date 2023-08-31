.. container::

   ==== ===============
   USPS R Documentation
   ==== ===============

   .. rubric:: US Postal Service
      :name: USPS

   .. rubric:: Description
      :name: description

   Numbers of post offices in the US from 1789 to 2020 with their income
   and expenses in current dollars and proportion of the federal
   government and of Gross Domestic Product (GDP). Also includes the
   number of pieces of mail, numbers of periodicals, pieces and
   periodicals per person, and cost coverage of periodicals for selected
   years.

   It would be interesting to find the total value of the subsidies for
   newspapers and other periodicals as a proportion of the budgets of
   the USPS and the federal government as well as of GDP. That is
   currently absent from the data consulted to produce this.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(USPS)

   .. rubric:: Format
      :name: format

   A ``data.frame`` containing 232 observations on the following
   variables:

   Year
      integer: the year: 1789:2020

   Income, Expenses
      Income and expenses in millions of current dollars, per Historian
      (2022).

   Income_pFed, Expenses_pFed
      ``Income`` and ``Expenses`` as a proportion of
      ``USGDPpresidents[, 'fedReceipts']`` and
      ``USGDPpresidents[, 'fedOutlays']``, respectively.

   Income_pGDP, Expenses_pGDP
      ``Income`` and ``Expenses`` as a proportion of ``GDP``, per
      ``MeasuringWorth``.

   Income_cap, Expenses_cap
      ``Income`` and ``Expenses`` per capita in current dollars =
      ``Income`` and ``Expenses`` divided by 1000 \*
      ``USGDPpresidents[, 'population.K']``.

   realIncome_cap, realExpenses_cap
      ``Income`` and ``Expenses`` per capita in constant 2012 dollars =
      ``Income_cap`` and ``Expenses_cap`` divided by
      ``USGDPpresidents[, 'GDPdeflator']``.

   postOffices
      Number of post offices per Historian (2022).

   KpopPerPostOffice
      US population in thousands per post office:
      ``USGDPpresidents[, 'population.K']`` divided by ``postOffices``.

   piecesOfMail, periodicals
      numeric: Millions of pieces of mail handled and periodicals
      mailed. "Pieces of mail"" are from Historian (2022). "Periodicals"
      are from Historian (2010).

   piecesOfMailPerCap, periodicalsPerCap
      ``piecesOfMail`` and ``periodicals`` handled per capita (per human
      in the US) per year.

   costCoveragePeriodicals
      Cost coverage of periodicals, per Historian (2010). This is
      available here only since 1960, though Historian (2010) gave a
      general outline of these numbers. This included saying, "In 1966,
      the percentage of its own costs covered by second-class mail (or
      'cost coverage'), including the subsidy, was 35 percent [reported
      as 36 percent here]. Its real coverage was 24 percent." The
      narrative noted that during parts of the nineteenth century the
      actual rate was zero. Sometimes it was zero only within county.
      Sometimes advertising was charged a higher rate than news.

      Other than numbers for the period since 1960, we note the coverage
      in 1951 as 20 percent, based on the following comment:

      "In February 1951, in a special message to Congress, President
      Harry S. Truman argued at length for a rate increase: 'In fiscal
      year 1952 . . . newspaper and magazine publishers will have 200
      million dollars – or 80 percent – of their postal costs paid for
      them by the general public.'"

   .. rubric:: Details
      :name: details

   ``rownames(USPS) = year``

   Data used by `McChesney and Nichols (2021-12-13) To Protect and
   Extend Democracy, Recreate Local News Media (Freepress.net, p. 6,
   note
   10) <https://www.freepress.net/sites/default/files/2022-03/to_protect_democracy_recreate_local_news_media_final.pdf>`__
   to estimate that newspaper subsidies averaged roughly 0.216 percent
   of GDP between 1840 and 1844.

   .. rubric:: Author(s)
      :name: authors

   Spencer Graves

   .. rubric:: Source
      :name: source

   Historian (2010-06) `Postage Rates for Periodicals: A Narrative
   History <https://about.usps.com/who/profile/history/periodicals-postage-history.htm>`__,
   accessed 2022-04-29.

   Historian (2022-02) `Pieces of Mail Handled, Number of Post Offices,
   Income, and Expenses Since
   1789 <https://about.usps.com/who/profile/history/pieces-of-mail-since-1789.htm>`__.

   .. rubric:: References
      :name: references

   Robert W. McChesney and John Nichols (2010) The Death and Life of
   American Journalism (Nation Books, pp. 310-311) describe how they
   computed 0.216 as an estimate of the percent of national income
   (Gross Domestic Product, GDP) devoted to newspaper subsidies,
   1840-1844. The numbers in the current dataset seem essentially
   equivalent but new and therefore perhaps more accurate. With these
   numbers, we got 0.209 percent of GDP rather than their 0.216 percent.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      ##
      ## plot Expenses as a percent of the 
      ## federal budget and of GDP 
      ##
      data(USPS)
      plot(Expenses_pFed~Year, USPS, type='l')
      plot(Expenses_pGDP~Year, USPS, type='l')
      plot(100*periodicals/piecesOfMail~Year, 
            USPS, type='l', ylab='', 
            main='periodicals as percent of mail')
            
      # Select a year 
      # as a charcter string not a number:
      USPS['1850',]

      ##
      ## Plot Expenses_pGDP with 
      ## USGDPpresidents[, 'fedOutlays_pGDP']
      ##
      str(yrs2 <- intersect(USPS$Year, 
                    USGDPpresidents$Year))
      yrs2a <- as.character(yrs2)

      str(USPS_fed <- cbind(USPS[yrs2a, "Expenses_pGDP"], 
            USGDPpresidents[yrs2a, "fedOutlays_pGDP"]))

      matplot(yrs2, USPS_fed, log='y', 
        ylab='', las=1, type='l', xlab='')
      abline(v=c(1840, 1844), lty='dotted', col='grey')
      text(1842, 6e-3, cex=.7,
        'McChesney & Nichols analysis', srt=90, col='grey')

      abline(v=c(1861, 1865), lty='dotted', col='grey')
      text(1863, 6e-3, 'Civil War', srt=90, col='grey')
      sel1 <- (USGDPpresidents$war=='World War I')
      (yr1 <- USGDPpresidents$Year[sel1])
      abline(v=yr1, col='grey', lty='dotted')
      text(mean(yr1), 2e-3, 'WWI', col='grey', srt=90)

      sel2 <- (USGDPpresidents$war=='World War II')
      (yr2 <- range(USGDPpresidents$Year[sel2]))
      abline(v=yr2, col='grey', lty='dotted')
      text(mean(yr2), 2e-3, 'WWII', col='grey', srt=90)

      abline(h=c(.001, .01, .1), lty='dotted', col='grey')
      legend("bottomright", 
          c('USPS Expenses_pGDP', 'fedOutlays_pGDP'), 
          col=1:2, lty=1:2, bty='n')
