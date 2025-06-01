.. container::

   .. container::

      ====================== ===============
      chakravertti.factorial R Documentation
      ====================== ===============

      .. rubric:: Factorial experiment of rice, 3x5x3x3
         :name: factorial-experiment-of-rice-3x5x3x3

      .. rubric:: Description
         :name: description

      Factorial experiment of rice, 3x5x3x3.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("chakravertti.factorial")

      .. rubric:: Format
         :name: format

      A data frame with 405 observations on the following 7 variables.

      ``block``
         block/field

      ``yield``
         yield

      ``date``
         planting date, 5 levels

      ``gen``
         genotype/variety, 3 levels

      ``treat``
         treatment combination, 135 levels

      ``seeds``
         number of seeds per hole, 3 levels

      ``spacing``
         spacing, inches, 3 levels

      .. rubric:: Details
         :name: details

      There were 4 treatment factors:

      3 Genotypes (varieties): Nehara, Bhasamanik, Bhasakalma

      5 Planting dates: Jul 16, Aug 1, Aug 16, Sep 1, Sep 16

      3 Spacings: 6 in, 9 in, 12 inches

      3 Seedlings per hole: 1, 2, local method

      There were 3x5x3x3=135 treatment combinations. The experiment was
      divided in 3 blocks (fields). Total 405 plots.

      "The plots of the same sowing date within each block were grouped
      together, and the position occupied by the sowing date groups
      within Within the blocks were determined at random. This grouping
      together of plots of the same sewing date was adopted to
      facilitate cultural operations. For the same reason, the three
      varieties were also laid out in compact rows. The nine
      combinations of spacings and seedling numbers were then thrown at
      random within each combination of date of planting and variety as
      shown in the diagram."

      Note: The diagram appears to show the treatment combinations, NOT
      the physical layout.

      Basically, date is a whole-plot effect, genotype is a sub-plot
      effect, and the 9 treatments (spacings \* seedlings) are
      completely randomized withing the sub-plot effect.

      .. rubric:: Source
         :name: source

      Chakravertti, S. C. and S. S. Bose and P. C. Mahalanobis (1936). A
      complex experiment on rice at the Chinsurah farm, Bengal, 1933-34.
      The Indian Journal of Agricultural Science, 6, 34-51.
      https://archive.org/details/in.ernet.dli.2015.271737/page/n83/mode/2up

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           libs(agridat)
           data(chakravertti.factorial)
           dat <- chakravertti.factorial
           
           # Simple means for each factor. Same as Chakravertti Table 3
           group_by(dat, gen) 
           group_by(dat, date) 
           group_by(dat, spacing) 
           group_by(dat, seeds) 

           libs(HH)
           interaction2wt(yield ~ gen + date + spacing + seeds, data=dat, main="chakravertti.factorial")

           # ANOVA matches Chakravertti table 2
           # This has a very interesting error structure.
           # block:date is error term for date
           # block:date:gen is error term for gen and date:gen
           # Residual is error term for all other tests (not needed inside Error())
           dat <- transform(dat,spacing=factor(spacing))
           m2 <- aov(yield ~ block + date + 
                       gen + date:gen + 
                       spacing + seeds +
                       seeds:spacing + date:seeds + date:spacing + gen:seeds + gen:spacing +
                       date:gen:seeds + date:gen:spacing + date:seeds:spacing + gen:seeds:spacing +
                       date:gen:seeds:spacing + Error(block/(date + date:gen)),
                     data=dat)
           summary(m2)
           

         ## End(Not run)
