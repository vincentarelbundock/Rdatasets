.. container::

   .. container::

      ========= ===============
      Draft1970 R Documentation
      ========= ===============

      .. rubric:: USA 1970 Draft Lottery Data
         :name: usa-1970-draft-lottery-data

      .. rubric:: Description
         :name: description

      This data set gives the results of the 1970 US draft lottery, in
      the form of a data frame.

      .. rubric:: Usage
         :name: usage

      ::

         data(Draft1970)

      .. rubric:: Format
         :name: format

      A data frame with 366 observations on the following 3 variables.

      ``Day``
         day of the year, 1:366

      ``Rank``
         draft priority rank of people born on that day

      ``Month``
         an ordered factor with levels ``Jan`` < ``Feb`` ... < ``Dec``

      .. rubric:: Details
         :name: details

      The draft lottery was used to determine the order in which
      eligible men would be called to the Selective Service draft. The
      days of the year (including February 29) were represented by the
      numbers 1 through 366 written on slips of paper. The slips were
      placed in separate plastic capsules that were mixed in a shoebox
      and then dumped into a deep glass jar. Capsules were drawn from
      the jar one at a time.

      The first number drawn was 258 (September 14), so all registrants
      with that birthday were assigned lottery number ``Rank`` 1. The
      second number drawn corresponded to April 24, and so forth. All
      men of draft age (born 1944 to 1950) who shared a birthdate would
      be called to serve at once. The first 195 birthdates drawn were
      later called to serve in the order they were drawn; the last of
      these was September 24.

      .. rubric:: Source
         :name: source

      Starr, N. (1997). Nonrandom Risk: The 1970 Draft Lottery, *Journal
      of Statistics Education*, v.5, n.2
      http://jse.amstat.org/v5n2/datasets.starr.html

      .. rubric:: References
         :name: references

      Fienberg, S. E. (1971), "Randomization and Social Affairs: The
      1970 Draft Lottery," *Science*, 171, 255-261.

      https://en.wikipedia.org/wiki/Draft_lottery_(1969)

      .. rubric:: See Also
         :name: see-also

      ``Draft1970table``

      .. rubric:: Examples
         :name: examples

      ::

         data(Draft1970)

         # scatterplot
         plot(Rank ~ Day, data=Draft1970)
         with(Draft1970, lines(lowess(Day, Rank), col="red", lwd=2))
         abline(lm(Rank ~ Day, data=Draft1970), col="blue")
          
         # boxplots
         plot(Rank ~ Month, data=Draft1970, col="bisque")

         lm(Rank ~ Month, data=Draft1970)
         anova(lm(Rank ~ Month, data=Draft1970))

         # make the table version
         Draft1970$Risk <- cut(Draft1970$Rank, breaks=3, labels=c("High", "Med", "Low"))
         with(Draft1970, table(Month, Risk))
