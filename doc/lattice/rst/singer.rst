.. container::

   ======== ===============
   H_singer R Documentation
   ======== ===============

   .. rubric:: Heights of New York Choral Society singers
      :name: heights-of-new-york-choral-society-singers

   .. rubric:: Description
      :name: description

   Heights in inches of the singers in the New York Choral Society in
   1979. The data are grouped according to voice part. The vocal range
   for each voice part increases in pitch according to the following
   order: Bass 2, Bass 1, Tenor 2, Tenor 1, Alto 2, Alto 1, Soprano 2,
   Soprano 1.

   .. rubric:: Usage
      :name: usage

   ::

      singer

   .. rubric:: Format
      :name: format

   A data frame with 235 observations on the following 2 variables.

   height
      Height in inches of the singers.

   voice.part
      (Unordered) factor with levels "``Bass 2``", "``Bass 1``",
      "``Tenor 2``", "``Tenor 1``", "``Alto 2``", "``Alto 1``",
      "``Soprano 2``", "``Soprano 1``".

   .. rubric:: Author(s)
      :name: authors

   Documentation contributed by Kevin Wright.

   .. rubric:: Source
      :name: source

   Chambers, J.M., W. S. Cleveland, B. Kleiner, and P. A. Tukey. (1983).
   *Graphical Methods for Data Analysis*. Chapman and Hall, New York.

   .. rubric:: References
      :name: references

   Cleveland, William S. (1993) *Visualizing Data*. Hobart Press,
   Summit, New Jersey.

   .. rubric:: Examples
      :name: examples

   ::

      # Separate histogram for each voice part (Figure 1.2 from Cleveland)
      histogram(~ height | voice.part,
                data = singer,
                aspect=1,
                layout = c(2, 4), 
                nint=15,
                xlab = "Height (inches)")

      # Quantile-Quantile plot (Figure 2.11 from Cleveland)
      qqmath(~ height | voice.part,
             data=singer,
             aspect=1, 
             layout=c(2,4),
             prepanel = prepanel.qqmathline,
             panel = function(x, ...) {
               panel.grid()
               panel.qqmathline(x, ...)
               panel.qqmath(x, ...)
             },
             xlab = "Unit Normal Quantile",
             ylab="Height (inches)")
