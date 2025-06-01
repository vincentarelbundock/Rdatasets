.. container::

   .. container::

      =============== ===============
      harrison.priors R Documentation
      =============== ===============

      .. rubric:: Ranges of analytes in soybean from other authors
         :name: ranges-of-analytes-in-soybean-from-other-authors

      .. rubric:: Description
         :name: description

      Ranges of analytes in soybean from other authors

      .. rubric:: Format
         :name: format

      A data frame with 80 observations on the following 5 variables.

      ``source``
         Source document

      ``substance``
         Analyte substance

      ``min``
         minimum amount (numeric)

      ``max``
         maximum analyte amount (numeric)

      ``number``
         number of substances

      .. rubric:: Details
         :name: details

      Harrison et al. show how to construct an informative Bayesian
      prior from previously-published ranges of concentration for
      several analytes.

      The units for daidzein, genistein, and glycitein are micrograms
      per gram.

      The raffinose and stachyose units were converted to a common
      'percent' scale.

      The author names in the 'source' variable are shortened forms of
      the citations in the supplemental information of Harrison et al.

      .. rubric:: Source
         :name: source

      Jay M. Harrison, Matthew L. Breeze, Kristina H. Berman, George G.
      Harrigan. 2013. Bayesian statistical approaches to compositional
      analyses of transgenic crops 2. Application and validation of
      informative prior distributions. *Regulatory Toxicology and
      Pharmacology*, 65, 251-258.
      https://doi.org/10.1016/j.yrtph.2012.12.002

      Data retrieved from the Supplemental Information of this source.

      .. rubric:: References
         :name: references

      Jay M. Harrison, Derek Culp, George G. Harrigan. 2013. Bayesian
      MCMC analyses for regulatory assessments of safety in food
      composition *Proceedings of the 24th Conference on Applied
      Statistics in Agriculture (2012)*.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(harrison.priors)
         dat <- harrison.priors

         d1 <- subset(dat, substance=="daidzein")

         # Stack the data to 'tall' format and calculate empirical cdf
         d1t <- with(d1, data.frame(xx = c(min, max), yy=c(1/(number+1), number/(number+1))))

         # Harrison 2012 Example 4: Common prior distribution
         # Harrison uses the minimum and maximum levels of daidzein from previous
         # studies as the first and last order statistics of a lognormal
         # distribution, and finds the best-fit lognormal distribution.

         m0 <- mean(log(d1t$xx)) # 6.37
         s0 <- sd(log(d1t$xx)) # .833
         mod <- nls(yy ~ plnorm(xx, meanlog, sdlog), data=d1t,
                    start=list(meanlog=m0, sdlog=s0))
         coef(mod) # Matches Harrison 2012
         ##   meanlog     sdlog
         ## 6.4187829 0.6081558

         plot(yy~xx, data=d1t, xlim=c(0,2000), ylim=c(0,1),
              main="harrison.priors - Common prior", xlab="daidzein level", ylab="CDF")
         mlog <- coef(mod)[1] # 6.4
         slog <- coef(mod)[2] # .61
         xvals <- seq(0, 2000, length=100)
         lines(xvals, plnorm(xvals, meanlog=mlog, sdlog=slog))


         d1a <- d1
         d1a$source <- as.character(d1a$source)
         d1a[19,'source'] <- "(All)" # Add a blank row for the densitystrip
         d1
         libs(latticeExtra)
         # Plot the range for each source, a density curve (with arbitary
         # vertical scale) for the common prior distribution, and a density
         # strip by stacking the individual bands and using transparency
         segplot(factor(source) ~ min+max, d1a,
                 main="harrison.priors",xlab="daidzein level",ylab="source") +
           xyplot(5000*dlnorm(xvals, mlog, slog)~xvals, type='l') +
           segplot(factor(rep(1,18)) ~ min+max, d1, 4, level=d1$number,
                   col.regions="gray20", alpha=.1)


         ## End(Not run)
