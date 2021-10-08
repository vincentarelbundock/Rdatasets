.. container::

   ========= ===============
   terrorism R Documentation
   ========= ===============

   .. rubric:: Global Terrorism Database yearly summaries
      :name: global-terrorism-database-yearly-summaries

   .. rubric:: Description
      :name: description

   The `Global Terrorism Database
   (GTD) <https://en.wikipedia.org/wiki/Global_Terrorism_Database>`__
   "is a database of incidents of terrorism from 1970 onward". Through
   2015, this database contains information on 141,966 incidents.

   ``terrorism`` provides a few summary statistics along with an
   ``ordered`` factor ``methodology``, which `Pape et
   al. <https://www.washingtonpost.com/news/monkey-cage/wp/2014/08/11/how-to-fix-the-flaws-in-the-global-terrorism-database-and-why-it-matters/>`__
   insisted is necessary, because an increase of over 70 percent in
   suicide terrorism between 2007 and 2013 is best explained by a
   methodology change in GTD that occurred on 2011-11-01; Pape's own
   `Suicide Attack
   Database <https://en.wikipedia.org/wiki/Suicide_Attack_Database>`__
   showed a 19 percent *decrease* over the same period.

   .. rubric:: Usage
      :name: usage

   ::

        data(terrorism)
        data(incidents.byCountryYr)
        data(nkill.byCountryYr)

   .. rubric:: Format
      :name: format

   ``incidents.byCountryYr`` and ``nkill.byCountryYr`` are matrices
   giving the numbers of incidents and numbers of deaths by year and by
   location of the event for 206 countries (rows) and for all years
   between 1970 and 2016 (columns) except for 1993, for which the
   entries are all NA, because the raw data previously collected was
   lost (though the total for that year is available in the
   ``data.frame`` ``terrorism``).

   NOTES:

   1. For ``nkill.byCountryYr`` and for
   ``terrorism[c('nkill', 'nkill.us')]``, NAs in GTD were treated as 0.
   Thus the actual number of deaths were likely higher, unless this was
   more than offset by incidents being classified as terrorism, when
   they should not have been.

   2. ``incidents.byCountryYr`` and ``nkill.byCountryYr`` are NA for
   1993, because the GTD data for that year were lost.

   ``terrorism`` is a ``data.frame`` containing the following:

   year
      integer year, 1970:2016.

   methodology
      an ``ordered`` factor giving the methodology / organization
      responsible for the data collection for most of the given year.
      The Pinkerton Global Intelligence Service (``PGIS``) managed data
      collection from 1970-01-01 to 1997-12-31. The Center for Terrorism
      and Intelligence Studies (``CETIS``) managed the project from
      1998-01-01 to 2008-03-31. The Institute for the Study of Violent
      Groups (``ISVG``) carried the project from 2008-04-01 to
      2011-10-31. The National Consortium for the Study of Terrorism and
      Responses to Terrorism (``START``) has managed data collection
      since 2011-11-01. For this variable, partial years are ignored, so
      ``methodology`` = ``CEDIS`` for 1998:2007, ``ISVG`` for 2008:2011,
      and ``START`` for 2012:2014.

   method
      a character vector consisting of the first character of the levels
      of ``methodology``:

      c('p', 'c', 'i', 's')

   incidents
      integer number of incidents identified each year.

      NOTE: ``sum(terrorism[["incidents"]])`` = 146920 = 141966 in the
      GTD database plus 4954 for 1993, for which the incident-level data
      were lost.

   incidents.us
      integer number of incidents identified each year with
      ``country_txt`` = "United States".

   suicide
      integer number of incidents classified as "suicide" by GTD
      variable ``suicide`` = 1. For 2007, this is 359, the number
      reported by `Pape et
      al. <https://www.washingtonpost.com/news/monkey-cage/wp/2014/08/11/how-to-fix-the-flaws-in-the-global-terrorism-database-and-why-it-matters/>`__
      For 2013, it is 624, which is 5 more than the 619 mentioned by
      Pape et al. Without checking with the SMART project
      administrators, one might suspect that 5 more suicide incidents
      from 2013 were found after the data Pape et al. analyzed but
      before the data used for this analysis.

   suicide.us
      Number of suicide incidents by year with ``country_txt`` = "United
      States".

   nkill
      number of confirmed fatalities for incidents in the given year,
      including attackers = ``sum(nkill, na.rm=TRUE)`` in the GTD
      incident data.

      NOTE: ``nkill`` in the GTD incident data includes both
      perpetrators and victims when both are available. It includes one
      when only one is available and is ``NA`` when neither is
      available. However, in most cases, we might expect that the more
      spectacular and lethal incidents would likely be more accurately
      reported. To the extent that this is true, it means that when
      numbers are missing, they are usually zero or small. This further
      suggests that the summary numbers recorded here probably represent
      a slight but not substantive undercount.

   nkill.us
      number of U.S. citizens who died as a result of incidents for that
      year = ``sum(nkill.us, na.rm=TRUE)`` in the GTD incident data.

      NOTES:

      1. This is subject to the same likely modest undercount discussed
      with ``nkill``.)

      2. These are U.S. citizens killed regardless of location. This
      explains at least part of the discrepancies between
      ``terrorism[, 'nkill.us']`` and
      ``nkill.byCountryYr['United States', ]``.

   nwound
      number of people wounded. (This is subject to the same likely
      modest undercount discussed with ``nkill``.)

   nwound.us
      Number of U.S. citizens wounded in terrorist incidents for that
      year = ``sum(nwound.us, na.rm=TRUE)`` in the GTD incident data.
      (This is subject to the same likely modest undercount discussed
      with ``nkill``.)

   pNA.nkill, pNA.nkill.us, pNA.nwound, pNA.nwound.us
      proportion of observations by year with missing values. These
      numbers are higher for the early data than more recent numbers.
      This is particularly true for ``nkill.us`` and ``nwound.us``,
      which exceed 90 percent for most of the period with
      ``methodology`` = ``PGIS``, prior to 1998.

   worldPopulation, USpopulation
      Estimated de facto population in thousands living in the world and
      in the US as of 1 July of the year indicated, according to the
      Population Division of the Department of Economic and Social
      Affairs of the United Nations; see "Sources" below.

   worldDeathRate, USdeathRate
      `Crude death
      rate <https://en.wikipedia.org/wiki/Mortality_rate>`__ (deaths per
      1,000 population) worldwide and in the US, according to the World
      Bank; see "Sources" below. This World Bank data set includes
      ``USdeathRate`` for each year from 1900 to 2014.

      The ``worldDeathRate`` numbers here were read manually from a plot
      on `that web
      page, <https://data.worldbank.org/indicator/SP.DYN.CDRT.IN?end=2014&start=1960&view=chart>`__
      except for the the number for 2015, which was estimated as a
      reduction of 0.73 percent from 2014, which was the average rate of
      decline (ratio of two successive years) for 1990 to 2014. The same
      method was used to estimate the ``USdeathRate`` for 2015 as the
      same as for 2014.

      NOTE: ``USdeathRate`` is to two significant digits only, unlike
      ``worldDeathRate``, which has four significant digits.

   worldDeaths, USdeaths
      number of deaths by year in the world and US

      ``worldDeaths =           worldPopulation * worldDeathRate``.

      ``USdeaths`` were computed by summing across age groups in
      "Deaths_5x1.txt" for the United States, downloaded from
      https://www.mortality.org/cgi-bin/hmd/country.php?cntr=USA&level=1
      from the Human Mortality Database; see sources below.

   kill.pmp, kill.pmp.us
      terrorism deaths per million population worldwide and in the US =

      ``0.001 * nkill / worldPopulation``

   pkill, pkill.us
      terrorism deaths as a proportion of total deaths worldwide and in
      the US

      ``pkill = nkill / worldDeaths``

      ``pkill.us = nkill.us / USdeaths``

   .. rubric:: Details
      :name: details

   As noted with the "description" above, `Pape et
   al. <https://www.washingtonpost.com/news/monkey-cage/wp/2014/08/11/how-to-fix-the-flaws-in-the-global-terrorism-database-and-why-it-matters/>`__
   noted that the GTD reported an increase in suicide terrorism of over
   70 percent between 2007 and 2013, while their `Suicide Attack
   Database <https://en.wikipedia.org/wiki/Suicide_Attack_Database>`__
   showed a 19 percent *decrease* over the same period. Pape et al.
   insisted that the most likely explanation for this difference is the
   change in the organization responsible for managing that data
   collection from ``ISVG`` to ``START``.

   If the issue is restricted to how incidents are classified as
   "suicide terrorism", this concern does not affect the other variables
   in this summary.

   However, if it also impacts what incidents are classified as
   "terrorism", it suggests larger problems.

   .. rubric:: Author(s)
      :name: authors

   Spencer Graves

   .. rubric:: Source
      :name: source

   National Consortium for the Study of Terrorism and Responses to
   Terrorism (START). (2017). Global Terrorism Database [Data file].
   Retrieved from https://start.umd.edu/gtd [accessed 2018-04-08].

   See also the `Global Terrorism
   Database <https://en.wikipedia.org/wiki/Global_Terrorism_Database>`__
   maintained by the `National Consortium for the Study of Terrorism and
   Responses to
   Terrorism <https://en.wikipedia.org/wiki/National_Consortium_for_the_Study_of_Terrorism_and_Responses_to_Terrorism>`__
   (START, 2015), https://www.start.umd.edu/gtd.

   The world and US population figures came from "Total Population -
   Both Sexes", World Population Prospects 2015, published by the
   Population Division of the Department of Economic and Social Affairs
   of the United Nations accessed 2016-09-05 (at a web link that has
   since changed: No longer at
   ``https://esa.un.org/unpd/wpp/Download/Standard/Population``, as it
   was when the data current used here was downloaded, 2016-09-05.
   Fortunately, as of 2020-02-09, such data seem to be available at
   https://population.un.org/wpp/Download/Standard/Population/.

   `Human Mortality Database. University of California, Berkeley (USA),
   and Max Planck Institute for Demographic Research
   (Germany). <https://www.mortality.org>`__

   .. rubric:: References
      :name: references

   Robert Pape, Keven Ruby, Vincent Bauer and Gentry Jenkins, `"How to
   fix the flaws in the Global Terrorism Database and why it
   matters" <https://www.washingtonpost.com/news/monkey-cage/wp/2014/08/11/how-to-fix-the-flaws-in-the-global-terrorism-database-and-why-it-matters/>`__,
   *The Washington Post*, August 11, 2014 (accessed 2016-01-09).

   .. rubric:: Examples
      :name: examples

   ::

      data(terrorism)
      ##
      ## plot deaths per million population 
      ##
      plot(kill.pmp~year, terrorism, 
           pch=method, type='b')
      plot(kill.pmp.us~year, terrorism, 
           pch=method, type='b', 
           log='y', las=1)
           
      # terrorism as parts per 10,000 
      # of all deaths 

      plot(pkill*1e4~year, terrorism, 
           pch=method, type='b', 
           las=1)
      plot(pkill.us*1e4~year, terrorism, 
           pch=method, type='b', 
           log='y', las=1)
           
      # plot number of incidents, number killed, 
      # and proportion NA

      plot(incidents~year, terrorism, type='b', 
            pch=method)

      plot(nkill.us~year, terrorism, type='b', 
            pch=method)
      plot(nkill.us~year, terrorism, type='b', 
            pch=method, log='y')

      plot(pNA.nkill.us~year, terrorism, type='b', 
            pch=method)
      abline(v=1997.5, lty='dotted', col='red')

      ##
      ## by country by year
      ##
      data(incidents.byCountryYr)
      data(nkill.byCountryYr)

      yr <- as.integer(colnames(
        incidents.byCountryYr))
      str(maxDeaths <- apply(nkill.byCountryYr, 
                             1, max) )
      str(omax <- order(maxDeaths, decreasing=TRUE))
      head(maxDeaths[omax], 8)
      tolower(substring( 
        names(maxDeaths[omax[1:8]]), 1, 2))
      pch. <- c('i', 'g', 'f', 'l', 
                's', 'c', 'u', 'p')
      cols <- 1:4

      matplot(yr, sqrt(t(
        nkill.byCountryYr[omax[1:8], ])),
        type='b', pch=pch., axes=FALSE, 
        ylab='(square root scale)   ', xlab='', 
        col=cols,
        main='number of terrorism deaths\nby country') 
      axis(1)
      (max.nk <- max(nkill.byCountryYr[omax[1:8], ]))
      i.nk <- c(1, 100, 1000, 3000, 
                5000, 7000, 10000)
      cbind(i.nk, sqrt(i.nk))
      axis(2, sqrt(i.nk), i.nk, las=1)
      ip <- paste(pch., names(maxDeaths[omax[1:8]]))
      legend('topleft', ip, cex=.55, 
             col=cols, text.col=cols)
