.. container::

   .. container::

      ========================= ===============
      mercer.mangold.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trial of mangolds
         :name: uniformity-trial-of-mangolds

      .. rubric:: Description
         :name: description

      Uniformity trial of mangolds at Rothamsted Experiment Station,
      England, 1910.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("mercer.mangold.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 200 observations on the following 4 variables.

      ``row``
         row

      ``col``
         column

      ``roots``
         root yields, pounds

      ``leaves``
         leaf yields, pounds

      .. rubric:: Details
         :name: details

      Grown in 1910.

      Each plot was 3 drills, each drill being 2.4 feet wide. Plots were
      1/200 acres, 7.2 feet by 30.25 feet long The "length of the plots
      runs with the horizontal lines of figures [in Table I], this being
      also the direction of the drills across the field."

      Field width: 10 plots \* 30.25ft = 302.5 feet

      Field length: 20 plots \* 7.25 ft = 145 feet

      .. rubric:: Source
         :name: source

      Mercer, WB and Hall, AD, 1911. The experimental error of field
      trials The Journal of Agricultural Science, 4, 107-132. Table 1.
      https://doi.org/10.1017/S002185960000160X

      .. rubric:: References
         :name: references

      McCullagh, P. and Clifford, D., (2006). Evidence for conformal
      invariance of crop yields, Proceedings of the Royal Society A:
      Mathematical, Physical and Engineering Science, 462, 2119–2143.
      https://doi.org/10.1098/rspa.2006.1667

      Theodor Roemer (1920). Der Feldversuch. Page 64, table 5.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           
           data(mercer.mangold.uniformity)
           dat <- mercer.mangold.uniformity
           
           libs(desplot)
           desplot(dat, leaves~col*row,
                   aspect=145/302, # true aspect
                   main="mercer.mangold.uniformity - leaves")

           libs(desplot)
           desplot(dat, roots~col*row,
                   aspect=145/302, # true aspect
                   main="mercer.mangold.uniformity - roots")

           libs(lattice)
           xyplot(roots~leaves, data=dat)
           

         ## End(Not run)
