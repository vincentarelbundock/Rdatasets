.. container::

   ================ ===============
   USincarcerations R Documentation
   ================ ===============

   .. rubric:: US incarcerations 1925 onward
      :name: us-incarcerations-1925-onward

   .. rubric:: Description
      :name: description

   Counts of prisoners under the jurisdiction of state and federal
   correctional authorities in the US. This does not include jail
   inmates.

   .. rubric:: Usage
      :name: usage

   ::

      data("USincarcerations")

   .. rubric:: Format
      :name: format

   A data frame with 95 observations on the following 7 variables.

   year
      an integer vector giving the year ``c(1925:2019)``.

   stateFedIncarcerees
      Total number of incarcerees = ``maleTotal + femaleTotal``.

   stateFedIncarcerationRate
      incarceration rate = ``stateFedIncarcerees`` per 100,000
      population.

   stateFedMales
      Total number of male incarcerees.

   stateFedMaleRate
      male incarceration rate = ``maleTotal`` per 100,000 males in the
      US population.

   stateFedFemales
      Total number of female incarcerees.

   stateFedFemaleRate
      female incarceration rate = ``femaleTotal`` per 100,000 females in
      the US population.

   .. rubric:: Details
      :name: details

   This dataset began as an effort to update `File:U.S. incarceration
   rates 1925 ``onwards.png`` on Wikimedia
   Commons <https://commons.wikimedia.org/wiki/File:U.S._incarceration_rates_1925_onwards.png>`__.
   Conveniently data on these variables was provided in a table for 1925
   to 2014. And a description was given of how to update that table
   using files ``p*t03.csv`` and ``p*t05.csv`` from `Prisoners In
   2019 <https://bjs.ojp.gov/library/publications/prisoners-2019>`__.

   An initial rationality check was to compute

   ``checkTot`` <- ``stateFedIncarcerees`` - ``stateFedMales`` -
   ``stateFedFemales``

   This was 0 except for 1927 and 1973, when it was 637 and 684. The
   ``stateFedFemales`` for 1972:1974 was 6269, 6004, 7389. We replaced
   6004 with 6688, which made the ``checkTot`` 0 for 1973.

   Similar checks for 1927 yielded nothing as obvious. However, the
   ``stateFedIncarcerees`` increased 6.9 percent in 1926 over 1925, and
   12.2 and 5.8 percent in the following two years. Subtracting 637 from
   109983 for 1927 gave us 109346, which reduced the increase to 11.6
   percent for 1927. It's no longer the maximum annual increase prior to
   1975.

   Next, these numbers were compared with those in ``p19t03.csv`` and
   ``p19t05.csv``, which include numbers of incarcerees and rates per
   100,000 population for 2009:2019. The numbers were identical for
   2009:2011, but there were several differences for the more recent
   counts.

   For ``USincarcerations``, we used the numbers from ``p19t03.csv`` and
   ``p19t05.csv``, because they seem likely to be more accurate.

   However, these numbers include only people in state and federal
   prisons. It excludes jails.

   `Key Statistic: Total correctional
   population <https://bjs.ojp.gov/data/key-statistics>`__ includes a
   plot of "Total adult correctional population 1980-2016", which does
   include jails. The data there are available as
   ``Total_correctional_population_counts_by_status.csv``. Data on these
   variables covering 2008-2018 are available as ``cpus1718.csv`` from
   "Data tables" at `Publication Correctional Populations In The United
   States,
   2017-2018 <https://bjs.ojp.gov/library/publications/correctional-populations-united-states-2017-2018>`__.
   The data in ``cpus1718.csv`` is mostly but not entirely identical to
   "Total adult correctional population 1980-2016" for 2008-2016, the
   period of overlap. We therefore used the older data up to 2007 and
   ``cpus1718.csv`` for 2008-2018.

   Actual analysis of the jail data is left for another project.

   .. rubric:: Source
      :name: source

   Data from 1925 to 2014 from `File:U.S. incarceration rates 1925
   ``onwards.png`` on Wikimedia
   Commons <https://commons.wikimedia.org/wiki/File:U.S._incarceration_rates_1925_onwards.png>`__,
   accessed 2020-11-23.

   The primary source for the more recent data are files ``p*t03.csv``
   and ``p*t05.csv`` from `Prisoners In
   2019 <https://bjs.ojp.gov/library/publications/prisoners-2019>`__,
   accessed 2020-11-23.

   Data on jails and community supervision dating back to 1980 are
   available in `Key Statistic: Total correctional
   population <https://bjs.ojp.gov/data/key-statistics>`__ with data on
   the most recent years available from `Publication Correctional
   Populations In The United States,
   2017-2018 <https://bjs.ojp.gov/library/publications/correctional-populations-united-states-2017-2018>`__.

   Some time in 2021 or later more recent data should become available.
   When that happens, it may be desired to update this table to include
   those numbers – and check for any revisions of earlier numbers.

   .. rubric:: References
      :name: references

   `United States incarceration
   rate <https://en.wikipedia.org/wiki/United_States_incarceration_rate>`__.

   .. rubric:: Examples
      :name: examples

   ::

      data(USincarcerations)

      matplot(USincarcerations[1],
        0.001*USincarcerations[c(3, 5, 7)], type='l', 
        xlab='', ylab='incarceration rate (%)')
      abline(h=0.5, lty='dotted', col='gray')
      lbl <- paste("US incarceration rate", 
        '(percent of the population)', sep='\n')
      text(1955, 0.75, lbl)
      text(2007, 0.86, 'male', col=2)
      text(2007, 0.15, 'female', col=3)
