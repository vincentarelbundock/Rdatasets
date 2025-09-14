.. container::

   .. container::

      ============= ===============
      sunspot.month R Documentation
      ============= ===============

      .. rubric:: Monthly Sunspot Data, from 1749 to "Present"
         :name: monthly-sunspot-data-from-1749-to-present

      .. rubric:: Description
         :name: description

      | Monthly numbers of sunspots, as from the World Data Center, aka
        SIDC. ``sunspot.month`` is the version of the data that will
        occasionally be updated when new counts become available (or the
        numbers are recalibrated). Note that around 2014–2015 there has
        been an international effort to recalibrate the sunspots
        numbers; since **R** 4.5.0 (2025), the recalibrated series is
        used.
      | The version in (too long) use from 2014 to 2024 is provided as
        ``sunspot.m2014`` for historical and reproducibility reasons.
        For strict reproducibility, hence use that, or ``sunspots``
        instead of ``sunspot.month``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         sunspot.month
         sunspot.m2014

      .. rubric:: Format
         :name: format

      The univariate time series ``sunspot.year``, ``sunspot.m2014`` and
      ``sunspot.month`` contain 289, 3177, and currently 3310
      observations, respectively, where the latter will increase over
      time. The objects are of class ``"ts"``.

      .. rubric:: Author(s)
         :name: authors

      R Core Team.

      .. rubric:: Source
         :name: source

      WDC-SILSO, Solar Influences Data Analysis Center (SIDC), Royal
      Observatory of Belgium, Av. Circulaire, 3, B-1180 BRUSSELS
      Currently at https://www.sidc.be/SILSO/datafiles

      From around 2015, expert astronomers decided to recalibrate
      historical sunspot numbers, see the ‘References’. This is *not
      yet* visible in current ``sunspot.month`` but may well change by
      the next release of **R**.

      .. rubric:: References
         :name: references

      Clette, Frédéric and Lefèvre, Laure (2016) The New Sunspot Number:
      Assembling All Corrections. *Solar Physics* **291**, 2629–2651.
      `doi:10.1007/s11207-016-1014-y <https://doi.org/10.1007/s11207-016-1014-y>`__

      Clette, F., Lefèvre, L., Chatzistergos, T. et al. (2023)
      Recalibration of the Sunspot-Number: Status Report. *Solar
      Physics* **298**: 44.
      `doi:10.1007/s11207-023-02136-3 <https://doi.org/10.1007/s11207-023-02136-3>`__

      .. rubric:: See Also
         :name: see-also

      ``sunspot.month`` is a more up-to-date and hence also longer
      version of ``sunspots``; the latter runs until 1983 and is kept
      fixed (for reproducibility as example dataset).

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats); require(graphics)
         ## Compare the monthly series
         plot (sunspot.month,
               main="sunspot.month & sunspots [package 'datasets']", col=2)
         lines(sunspots) # -> clear recalibration (to *larger* values)
         at. <- seq(1750, 2030, by=10)
         atyr <- at.[at. %% 50 != 0] #%
         Axis(time(sunspot.month), at = atyr, side = 1,
              tck= -1/100, padj = -1.5, cex.axis = 3/4)

         ## Now look at the difference :
         all(tsp(sunspots)     [c(1,3)] ==
             tsp(sunspot.month)[c(1,3)]) ## Start & Periodicity are the same
         n1 <- length(sunspots)
         table(eq <- sunspots == sunspot.m2014[1:n1]) #>  143  are different !
         i <- which(!eq)
         rug(time(eq)[i])
         s1 <- sunspots[i] ; s2 <- sunspot.m2014[i]
         cbind(i = i, time = time(sunspots)[i], sunspots = s1, ss.month = s2,
               perc.diff = round(100*2*abs(s1-s2)/(s1+s2), 1))

         ## How to recreate the "old" sunspot.month (R <= 3.0.3) =: sunspot.month.0
         .sunspot.diff <- cbind(
             i = c(1202L, 1256L, 1258L, 1301L, 1407L, 1429L, 1452L, 1455L,
                   1663L, 2151L, 2329L, 2498L, 2594L, 2694L, 2819L),
             res10 = c(1L, 1L, 1L, -1L, -1L, -1L, 1L, -1L,
                   1L, 1L, 1L, 1L, 1L, 20L, 1L))
         ssm0 <- sunspot.m2014[1:2988]
         with(as.data.frame(.sunspot.diff), ssm0[i] <<- ssm0[i] - res10/10)
         sunspot.month.0 <- ts(ssm0, start = 1749, frequency = 12)
         stopifnot(length(sunspot.month.0) == 2988)
