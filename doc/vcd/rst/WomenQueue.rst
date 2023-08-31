.. container::

   ========== ===============
   WomenQueue R Documentation
   ========== ===============

   .. rubric:: Women in Queues
      :name: WomenQueue

   .. rubric:: Description
      :name: description

   Data from Jinkinson & Slater (1981) and Hoaglin & Tukey (1985)
   reporting the frequency distribution of females in 100 queues of
   length 10 in a London Underground station.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("WomenQueue")

   .. rubric:: Format
      :name: format

   A 1-way table giving the number of women in 100 queues of length 10.
   The variable and its levels are

   == ====== =============
   No Name   Levels
   1  nWomen 0, 1, ..., 10
   \         
   == ====== =============

   .. rubric:: Source
      :name: source

   M. Friendly (2000), Visualizing Categorical Data, pages 19–20.

   .. rubric:: References
      :name: references

   D. C. Hoaglin & J. W. Tukey (1985), Checking the shape of discrete
   distributions. In D. C. Hoaglin, F. Mosteller, J. W. Tukey (eds.),
   *Exploring Data Tables, Trends and Shapes*, chapter 9. John Wiley &
   Sons, New York.

   R. A. Jinkinson & M. Slater (1981), Critical discussion of a
   graphical method for identifying discrete distributions, *The
   Statistician*, **30**, 239–248.

   M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
   Cary, NC.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("WomenQueue")
      gf <- goodfit(WomenQueue, type = "binomial")
      summary(gf)
      plot(gf)
