========= ===============
kiwishade R Documentation
========= ===============

Kiwi Shading Data
-----------------

Description
~~~~~~~~~~~

The ``kiwishade`` data frame has 48 rows and 4 columns. The data are
from a designed experiment that compared different kiwifruit shading
treatments. There are four vines in each plot, and four plots (one for
each of four treatments: none, Aug2Dec, Dec2Feb, and Feb2May) in each of
three blocks (locations: west, north, east). Each plot has the same
number of vines, each block has the same number of plots, with each
treatment occurring the same number of times.

Usage
~~~~~

::

   kiwishade

Format
~~~~~~

This data frame contains the following columns:

yield
   Total yield (in kg)

plot
   a factor with levels ``east.Aug2Dec``, ``east.Dec2Feb``,
   ``east.Feb2May``, ``east.none``, ``north.Aug2Dec``,
   ``north.Dec2Feb``, ``north.Feb2May``, ``north.none``,
   ``west.Aug2Dec``, ``west.Dec2Feb``, ``west.Feb2May``, ``west.none``

block
   a factor indicating the location of the plot with levels ``east``,
   ``north``, ``west``

shade
   a factor representing the period for which the experimenter placed
   shading over the vines; with levels: ``none`` no shading, ``Aug2Dec``
   August - December, ``Dec2Feb`` December - February, ``Feb2May``
   February - May

Details
~~~~~~~

The northernmost plots were grouped together because they were similarly
affected by shading from the sun in the north. For the remaining two
blocks shelter effects, whether from the west or from the east, were
thought more important.

Source
~~~~~~

Snelgar, W.P., Manson. P.J., Martin, P.J. 1992. Influence of time of
shading on flowering and yield of kiwifruit vines. Journal of
Horticultural Science 67: 481-487.

References
~~~~~~~~~~

Maindonald J H 1992. Statistical design, analysis and presentation
issues. New Zealand Journal of Agricultural Research 35: 121-141.

Examples
~~~~~~~~

::

   print("Data Summary - Example 2.2.1")
   attach(kiwishade)
   kiwimeans <- aggregate(yield, by=list(block, shade), mean)
   names(kiwimeans) <- c("block","shade","meanyield")

   kiwimeans[1:4,]
   pause()

   print("Multilevel Design - Example 9.3")
   kiwishade.aov <- aov(yield ~ shade+Error(block/shade),data=kiwishade)
   summary(kiwishade.aov)
   pause()


   sapply(split(yield, shade), mean)

   pause()

   kiwi.table <- t(sapply(split(yield, plot), as.vector))
   kiwi.means <- sapply(split(yield, plot), mean)
   kiwi.means.table <- matrix(rep(kiwi.means,4), nrow=12, ncol=4)
   kiwi.summary <- data.frame(kiwi.means, kiwi.table-kiwi.means.table)
   names(kiwi.summary)<- c("Mean", "Vine 1", "Vine 2", "Vine 3", "Vine 4")
   kiwi.summary
   mean(kiwi.means) # the grand mean (only for balanced design)

   if(require(lme4, quietly=TRUE)) {
   kiwishade.lmer <- lmer(yield ~ shade + (1|block) + (1|block:plot),
                          data=kiwishade)
   ## block:shade is an alternative to block:plot

   kiwishade.lmer


   ##                  Residuals and estimated effects
   xyplot(residuals(kiwishade.lmer) ~ fitted(kiwishade.lmer)|block,
                   data=kiwishade, groups=shade,
                   layout=c(3,1), par.strip.text=list(cex=1.0),
                   xlab="Fitted values (Treatment + block + plot effects)",
                   ylab="Residuals", pch=1:4, grid=TRUE,
                   scales=list(x=list(alternating=FALSE), tck=0.5),
                   key=list(space="top", points=list(pch=1:4),
                            text=list(labels=levels(kiwishade$shade)),columns=4))
   ploteff <- ranef(kiwishade.lmer, drop=TRUE)[[1]]
   qqmath(ploteff, xlab="Normal quantiles", ylab="Plot effect estimates",
          scales=list(tck=0.5))
   }
