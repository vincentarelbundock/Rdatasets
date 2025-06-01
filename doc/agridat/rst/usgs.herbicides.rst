.. container::

   .. container::

      =============== ===============
      usgs.herbicides R Documentation
      =============== ===============

      .. rubric:: Concentrations of herbicides in streams in the United
         States
         :name: concentrations-of-herbicides-in-streams-in-the-united-states

      .. rubric:: Description
         :name: description

      Concentrations of selected herbicides and degradation products
      determined by laboratory method analysis code GCS for water
      samples collected from 51 streams in nine Midwestern States,2002

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("usgs.herbicides")

      .. rubric:: Format
         :name: format

      A data frame with 184 observations on the following 19 variables.

      ``mapnum``
         map number

      ``usgsid``
         USGS ID

      ``long``
         longitude

      ``lat``
         latitude

      ``site``
         site name

      ``city``
         city

      ``sampletype``
         sample type code

      ``date``
         date sample was collected

      ``hour``
         hour sample was collected

      ``acetochlor``
         concentration as character

      ``alachlor``
         concentration as character

      ``ametryn``
         concentration as character

      ``atrazine``
         concentration as character

      ``CIAT``
         concentration as character

      ``CEAT``
         concentration as character

      ``cyanazine``
         concentration as character

      ``CAM``
         concentration as character

      ``dimethenamid``
         concentration as character

      ``flufenacet``
         concentration as character

      .. rubric:: Details
         :name: details

      Concentrations of selected herbicides and degradation products
      determined by laboratory method analysis code GCS for water
      samples collected from 51 streams in nine Midwestern States, 2002.

      All concentrations are micrograms/liter, "<" means "less than".
      The data are in character format to allow for "<".

      The original report contains data for more herbicides. This data
      is for illustrative purposes.

      Sample types: CR = concurrent replicate sample, FB = field blank,
      LD = laboratory duplicate, S1 = sample from pre-emergence runoff,
      S2 = sample from post-emergence runoff, S3 = sample from
      harvest-season runoff.

      .. rubric:: Source
         :name: source

      Scribner, E.A., Battaglin, W.A., Dietze, J.E., and Thurman, E.M.,
      "Reconnaissance Data for Glyphosate, Other Selected Herbicides,
      their Degradation Products, and Antibiotics in 51 streams in Nine
      Midwestern States, 2002". U.S. Geological Survey Open File Report
      03-217. Herbicide data from table 5, page 30-37. Site coordinates
      page 7-8. https://ks.water.usgs.gov/pubs/reports/ofr.03-217.html

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(usgs.herbicides)
           dat <- usgs.herbicides
           

           libs(NADA)
           # create censored data for one trait
           dat$y <- as.numeric(dat$atrazine)
           dat$ycen <- is.na(dat$y)
           dat$y[is.na(dat$y)] <- .05
           
           # percent censored
           with(dat, censummary(y, censored=ycen))
           # median/mean
           with(dat, cenmle(y, ycen, dist="lognormal"))
           # boxplot
           with(dat, cenboxplot(obs=y, cen=ycen, log=FALSE,
                                main="usgs.herbicides"))
           # with(dat, boxplot(y))
           pp <- with(dat, ros(obs=y, censored=ycen, forwardT="log")) # default lognormal
           plot(pp)


           plotfun <- function(vv){
             dat$y <- as.numeric(dat[[vv]])
             dat$ycen <- is.na(dat$y)
             dat$y[is.na(dat$y)] <- .01
             # qqnorm(log(dat$y), main=vv) # ordinary qq plot shows censored values
             pp <- with(dat, ros(obs=y, censored=ycen, forwardT="log"))
             plot(pp, main=vv) # omits censored values
           }
           op <- par(mfrow=c(3,3))
           vnames <- c("acetochlor", "alachlor", "ametryn", "atrazine","CIAT", "CEAT", "cyanazine", #"CAM",
                       "dimethenamid", "flufenacet")
           for(vv in vnames) plotfun(vv)
           par(op)
           

         ## End(Not run)
