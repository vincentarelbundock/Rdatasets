.. container::

   .. container::

      ======================= ===============
      harris.multi.uniformity R Documentation
      ======================= ===============

      .. rubric:: Uniformity trials with multiple crops, 15 years on the
         same land
         :name: uniformity-trials-with-multiple-crops-15-years-on-the-same-land

      .. rubric:: Description
         :name: description

      Uniformity trials with multiple crops, at Huntley Field Station,
      Montana, 1911-1925.

      .. rubric:: Format
         :name: format

      A data frame with 1058 observations on the following 5 variables.

      ``series``
         series (field coordinate)

      ``plot``
         plot number (field ordinate)

      ``year``
         year, 1911-1925

      ``crop``
         crop

      ``yield``
         yield per plot (pounds)

      .. rubric:: Details
         :name: details

      The yields given in Harris (1920) (Practical universality...) are
      given for quarter-plots.

      The yields given in Harris (1920) (Permanence of ...)

      The yields given in Harris (1928) are given for single plots.

      Field width: 2 plots \* 317 ft + 5 feet alley = 639 feet

      Field length: 23 plots \* 23.3 feet = 536 feet

      All yields here are given in pound per plot. The original data in
      Harris (1920) for the 1911 sugarbeet yields were in tons/ac,
      (Harris 1920, table 3 footnote), but these were converted to
      pounds/plot for the purpose of this dataset.

      Harris (1928) shows a map of the location on page 16.

      Harris (1920):

      1911: In the spring of 1911 this field was laid out into 46 plots,
      each measuring 23.5 by 317 feet and containing 0.17 acre, arranged
      in two parallel series of 23 plots each. The two series of plots
      were separated merely by a temporary irrigation ditch. In 1911 it
      was planted to sugar beets.

      1912: In the spring of 1912 it was seeded to alfalfa, and one
      cutting was harvested that year. This stand remained on the ground
      during 1913 and 1914, when the entire field was fall-plowed.

      1913: Three cuttings were made, but the third cutting was lost in
      a heavy wind which scattered and mixed the crop before weighings
      from the various plots could be made. The first cutting,
      designated as alfalfa I, was made on plots one-half the original
      size. The second cutting was harvested from plots one-quarter the
      original size.

      1914: The first and second cuttings in 1914 were weighed for plots
      one-quarter the original size–that is, 0.0425-acre plots–while the
      third cutting was recorded for plots one-third the original size.
      These furnish the data for alfalfa I, II, and III for 1914. Total
      yields for the first and second cuttings in 1913 and 1914 and for
      the first, second, and third cuttings in 1914 are also considered.

      1915: Ear corn.

      1916: Ear corn.

      1917: The fields were planted to oats, and records were made of
      grain, straw, and total yield.

      1918: Silage corn was grown.

      1919: The land produced a crop of barley.

      1920: Silage corn

      1921 Alfalfa

      1922 Alfalfa, cutting 3

      1923 Alfalfa, cutting 1 and 3

      1914 Alfalfa, cutting 2 and 3

      Harris (1928):

      The southeast corner of Series II, the east series, is about 80
      feet from the main canal, and the southwest corner of Series III
      is about 50 feet from Ouster Coulee. The main project canal
      carries normally during the irrigation season about 400
      second-feet of water. The water surface in the canal is about 4
      feet above the high corner of the field. It is evident from
      surface conditions, as well as from borings made between the canal
      and the field, that there is extensive seepage from the canal into
      the subsoil of the field. The volume of this seepage has been
      larger in recent years than it was in the earlier years of the
      cropping experiments, probably because the canal bank has been
      worn away by internal erosion, exposing a stratum of sandy subsoil
      that underlies the canal and part of the field.

      Whereas in the earlier crops Series II was better for alfalfa,
      Series III was better for alfalfa in the later period. The writers
      feel inclined to suggest that in the earlier experiments the
      height of the water table had no harmful effect upon a deep-rooted
      crop such as alfalfa. It is quite possible that during drier
      periods the higher water table actually favored alfalfa growth on
      Series II. The higher water tables of recent years have probably
      had a deleterious influence, which has been especially marked on
      Series II, where the water apparently comes nearer to the surface
      than in Series III.

      .. rubric:: Source
         :name: source

      Harris, J Arthur and Scofield, CS. (1920). Permanence of
      differences in the plats of an experimental field. Jour. Agr. Res,
      20, 335-356. https://naldc.nal.usda.gov/catalog/IND43966236
      https://www.google.com/books/edition/Journal_of_the_American_Society_of_Agron/Zwz0AAAAMAAJ?hl=en&gbpv=1&pg=PA257
      This has the data for 1911-1919.

      Harris, J Arthur and Scofield, CS. (1928). Further studies on the
      permanence of differences in the plots of an experimental field.
      Jour. Agr. Res, 36, 15–40.
      https://naldc.nal.usda.gov/catalog/IND43967538 This has the data
      for 1920-1925.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
         library(agridat)

         data(harris.multi.uniformity)
         dat <- harris.multi.uniformity
         # Combine year/crop into 'harvest'
         dat <- transform(dat, harv = factor(paste0(year,".",crop)))

         # Average yields. Harris 1928, table 2.
         aggregate(yield~harv, dat, mean)

         # Corrgram
         libs(reshape2,corrgram)
         mat <- acast(dat, series+plot~harv, value.var='yield')
         corrgram(mat, main="harris.multi.uniformity - correlation of crop yields")


         # Compare to Harris 1928, table 4.  More positive than negative correlations.
         # densityplot(as.vector(cor(mat)), xlab="correlations",
         #             main="harris.multi.uniformity")

           
         # Standardize yields for each year
         mats <- scale(mat)
         # Melt and re-name columns so we can make field maps.  Obvious spatial
         # patterns that persist over years
         d2 <- melt(mats)
         names(d2) <- c('ord','harv','yield')
         d2$series <- as.numeric(substring(d2$ord,1,1))
         d2$plot <- as.numeric(substring(d2$ord,3))

         # Series 2 is on the east side, so switch 2 and 3 for correct plotting
         d2$xord <- 5 - dat$series
         # Note that for alfalfa, higher-yielding plots in 1912-1914 were
         # lower-yielding in 1922-1923.
         # Heatmaps for individual year/harvest combinations
         libs(desplot)
         desplot(d2, yield ~ xord*plot|harv,
                 aspect=536/639, flip=TRUE, # true aspect
                 main="harris.multi.uniformity")

         # Crude fertility map by averaging across years shows probable
         # sub-surface water effects
         agg <- aggregate(yield ~ xord + plot, data=d2, mean)
         desplot(agg, yield ~ xord + plot,
                 aspect=536/639, # true aspect
                 main="harris.multi.uniformity fertility")


         ## End(Not run)
