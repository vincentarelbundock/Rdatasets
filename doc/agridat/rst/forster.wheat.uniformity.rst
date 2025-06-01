.. container::

   .. container::

      ======================== ===============
      forster.wheat.uniformity R Documentation
      ======================== ===============

      .. rubric:: Uniformity trial of wheat in Australia.
         :name: uniformity-trial-of-wheat-in-australia.

      .. rubric:: Description
         :name: description

      Uniformity trial of wheat in Australia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("forster.wheat.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 160 observations on the following 3 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield, ounces per plot

      .. rubric:: Details
         :name: details

      This experiment was a repeat of the classic experiment by Mercer
      and Hall.

      Conducted at State Research Farm, Werribee, Victoria, Australia.

      Planted 1926. Harvested 1927. An acre of land was selected. Each
      plot had one double-sown row.

      Each plot was 30 x 20 links. The whole experiment was 300 x 320
      links.

      Near the west edge, a strip was damaged by cart tracks and
      excluded.

      The field was marked into quarters and one quarter was subdivided
      and harvested at a time.

      Each quarter was cut into 5 strips of 8 plots.

      Field length: 16 plots \* 20 links = 320 links (211 feet).

      Field width: 10 plots \* 30 links = 300 links (197 feet).

      Note: It is not clear how a strip "a few yards wide" could be
      omitted and yet the dimensions of the whole area still be 300 x
      320 links.

      Since the omitted strip is about 1/3 the width of a plot, we
      (agridat authors) decided to ignore the omitted strip.

      This electronic data was manually typed from the source on
      2023-04-12. Summary statistics of this electronic data differ
      slightly from the summaries in Forster, indicating possible typos
      or rounding of the printed yield values in the paper. Values were
      checked by hand and match the paper.

      .. rubric:: Source
         :name: source

      Forster, H. C. (Howard Carlyle), - Vasey, A. J. (1928).
      Experimental error of field trials in Australia. Proceedings of
      the Royal Society of Victoria. New series, 40, 70–80. Table 1.
      https://www.biodiversitylibrary.org/page/54367272

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           require(agridat)
           data(forster.wheat.uniformity)
           dat <- forster.wheat.uniformity
           
           mean(dat$yield)
           # 135.97 # Forster says 136.5
           sd(dat$yield)
           # 10.68  # Forster says 10.9
           
           # Compare to Forster table 3.  Slight differences.
           table( cut(dat$yield,
                      breaks = c(106,111,116,121,126,131,136,141,
                                 146,151,156,161,166)+.5) )
           # Forster has 5 plots in the 157-161 bin, but we show 6.
           # I filtered the data for this bin and verified our data
           # matches the layout in the paper.
           filter(dat, yield>156.5, yield<161.5)

           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=(16*20)/(10*30), # true aspect
                   main="forster.wheat.uniformity")

         ## End(Not run)
