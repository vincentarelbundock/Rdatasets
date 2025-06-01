.. container::

   .. container::

      =============== ===============
      cochran.lattice R Documentation
      =============== ===============

      .. rubric:: Balanced lattice experiment in cotton
         :name: balanced-lattice-experiment-in-cotton

      .. rubric:: Description
         :name: description

      Balanced lattice experiment in cotton

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("cochran.lattice")

      .. rubric:: Format
         :name: format

      A data frame with 80 observations on the following 5 variables.

      ``y``
         percent of affected flower buds

      ``rep``
         replicate

      ``row``
         row

      ``col``
         column

      ``trt``
         treatment factor

      .. rubric:: Details
         :name: details

      The experiment is a balanced lattice square with 16 treatments in
      a 4x4 layout in each of 5 replicates. The treatments were applied
      to cotton plants. Each plot was ten rows wide by 70 feet long
      (about 1/18 of an acre). (Estimated plot width is 34.5 feet.) Data
      were collected from the middle 4 rows. The data are the
      percentages of squares showing attack by boll weevils. A 'square'
      is the name given to a young flower bud.

      The plot orientation is not clear.

      .. rubric:: Source
         :name: source

      William G. Cochran, Gertrude M. Cox. *Experimental Designs*, 2nd
      Edition. Page 490.

      Originally from: F. M. Wadley (1946). Incomplete block designs in
      insect population problems. *J. Economic Entomology*, 38, 651–654.

      .. rubric:: References
         :name: references

      Walter Federer. Combining Standard Block Analyses With Spatial
      Analyses Under a Random Effects Model. Cornell Univ Tech Report
      BU-1373-MA. https://hdl.handle.net/1813/31971

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(cochran.lattice)
         dat <- cochran.lattice

         libs(desplot)
         desplot(dat, y~row*col|rep,
                 text=trt, # aspect unknown, should be 2 or .5
                  main="cochran.lattice")


         # Random rep,row,column model often used by Federer
         libs(lme4)
         dat <- transform(dat, rowf=factor(row), colf=factor(col))
         m1 <-  lmer(y ~ trt + (1|rep) + (1|rep:row) + (1|rep:col), data=dat)
         summary(m1)


         ## End(Not run)
