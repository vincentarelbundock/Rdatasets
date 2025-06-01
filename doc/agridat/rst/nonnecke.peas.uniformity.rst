.. container::

   .. container::

      ======================== ===============
      nonnecke.peas.uniformity R Documentation
      ======================== ===============

      .. rubric:: Uniformity trial of canning peas
         :name: uniformity-trial-of-canning-peas

      .. rubric:: Description
         :name: description

      Uniformity trial of canning peas in southern Alberta, 1957.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("nonnecke.peas.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 540 observations on the following 5 variables.

      ``block``
         block factor

      ``row``
         row

      ``col``
         column

      ``vines``
         vines weight, pounds

      ``peas``
         shelled peas weight, pounds

      .. rubric:: Details
         :name: details

      Width of basic plot was 10 feet, length was 5 feet, as limited by
      the viner. At each of two blocks/locations, planting consisted of
      18 rows (only 15 rows were harvested) that were 10 feet wide and
      90 feet long. Rows were separated by 7 foot bare ground to
      facilitate harvesting. Nonnecke 1960 shows a map of one block.

      Plots were harvested with a five foot mower. Vines from each plot
      were weighed, then shelled. The two blocks/locations were side by
      side and combined by Nonnecke. The optimum plot size was found to
      be 5 feet long and 10 feet wide.

      Field width: 15 rows \* 10 ft/row + 14 gaps \* 7 ft/gap = 248 feet

      Field length: 18 plots \* 5 ft/plot = 90 feet

      .. rubric:: Source
         :name: source

      Ib Libner Nonnecke. 1958. Yield variability of sweet corn and
      canning peas as affected by plot size and shape. Thesis at Oregon
      State College. https://hdl.handle.net/1957/23367

      .. rubric:: References
         :name: references

      I. L. Nonnecke, 1960. The precision of field experiments with
      vegetable crops as influenced by plot and block size and shape:
      II. Canning peas. Canadian Journal of Plant Science, 40(2):
      396-404. https://doi.org/10.4141/cjps60-053

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           
           data(nonnecke.peas.uniformity)
           dat <- nonnecke.peas.uniformity
           
           libs(desplot)
           desplot(dat, vines~col*row|block,
                   tick=TRUE, flip=TRUE, aspect=248/90, # true aspect
                   main="nonnecke.peas.uniformity - vines")
           desplot(dat, peas~col*row|block,
                   tick=TRUE, flip=TRUE, aspect=248/90, # true aspect
                   main="nonnecke.peas.uniformity - peas")

           libs(lattice)
           xyplot(peas~vines|block,dat,
                  xlab="vine weight", ylab="shelled pea weight",
                  main="nonnecke.peas.uniformity")


         ## End(Not run)
