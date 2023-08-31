.. container::

   ======= ===============
   ruspini R Documentation
   ======= ===============

   .. rubric:: Ruspini Data
      :name: ruspini

   .. rubric:: Description
      :name: description

   The Ruspini data set, consisting of 75 points in four groups that is
   popular for illustrating clustering techniques.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(ruspini)

   .. rubric:: Format
      :name: format

   A data frame with 75 observations on 2 variables giving the x and y
   coordinates of the points, respectively.

   .. rubric:: Source
      :name: source

   E. H. Ruspini (1970) Numerical methods for fuzzy clustering. *Inform.
   Sci.* **2**, 319–350.

   .. rubric:: References
      :name: references

   see those in ``agnes``.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(ruspini)

      ## Plot similar to Figure 4 in Stryuf et al (1996)
      ## Not run: plot(pam(ruspini, 4), ask = TRUE)


      ## Plot similar to Figure 6 in Stryuf et al (1996)
      plot(fanny(ruspini, 5))
