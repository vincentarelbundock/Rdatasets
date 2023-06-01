.. container::

   ===== ===============
   trees R Documentation
   ===== ===============

   .. rubric:: Diameter, Height and Volume for Black Cherry Trees
      :name: trees

   .. rubric:: Description
      :name: description

   This data set provides measurements of the diameter, height and
   volume of timber in 31 felled black cherry trees. Note that the
   diameter (in inches) is erroneously labelled Girth in the data. It is
   measured at 4 ft 6 in above the ground.

   .. rubric:: Usage
      :name: usage

   ::

      trees

   .. rubric:: Format
      :name: format

   A data frame with 31 observations on 3 variables.

   +----------+------------+---------+---------------------------------+
   | ``[,1]`` | ``Girth``  | numeric | Tree diameter (rather than      |
   |          |            |         | girth, actually) in inches      |
   +----------+------------+---------+---------------------------------+
   | ``[,2]`` | ``Height`` | numeric | Height in ft                    |
   +----------+------------+---------+---------------------------------+
   | ``[,3]`` | ``Volume`` | numeric | Volume of timber in cubic ft    |
   +----------+------------+---------+---------------------------------+

   .. rubric:: Source
      :name: source

   Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) *The Minitab
   Student Handbook*. Duxbury Press.

   .. rubric:: References
      :name: references

   Atkinson, A. C. (1985) *Plots, Transformations and Regression*.
   Oxford University Press.

   .. rubric:: Examples
      :name: examples

   ::

      require(stats); require(graphics)
      pairs(trees, panel = panel.smooth, main = "trees data")
      plot(Volume ~ Girth, data = trees, log = "xy")
      coplot(log(Volume) ~ log(Girth) | Height, data = trees,
             panel = panel.smooth)
      summary(fm1 <- lm(log(Volume) ~ log(Girth), data = trees))
      summary(fm2 <- update(fm1, ~ . + log(Height), data = trees))
      step(fm2)
      ## i.e., Volume ~= c * Height * Girth^2  seems reasonable
