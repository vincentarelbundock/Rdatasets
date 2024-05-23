.. container::

   .. container::

      ========== ===============
      WeldonDice R Documentation
      ========== ===============

      .. rubric:: Weldon's Dice Data
         :name: weldons-dice-data

      .. rubric:: Description
         :name: description

      Data from Pearson (1900) about the frequency of 5s and 6s in
      throws of 12 dice. Weldon tossed the dice 26,306 times and
      reported his results in a letter to Francis Galton on 1894-02-02.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("WeldonDice")

      .. rubric:: Format
         :name: format

      A 1-way table giving the frequency of a 5 or a 6 in 26,306 throws
      of 12 dice where 10 indicates ‘10 or more’ 5s or 6s. The variable
      and its levels are

      == ==== =============
      No Name Levels
      1  n56  0, 1, ..., 10
      \       
      == ==== =============

      .. rubric:: Source
         :name: source

      M. Friendly (2000), Visualizing Categorical Data, pages 20–21.

      .. rubric:: References
         :name: references

      K. Pearson (1900), On the criterion that a given system of
      deviations from the probable in the case of a correlated system of
      variables is such that it can be reasonably supposed to have
      arisen by random sampling, *Philosophical Magazine*, **50** (5th
      series), 157–175.

      M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
      Cary, NC.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("WeldonDice")
         gf <- goodfit(WeldonDice, type = "binomial")
         summary(gf)
         plot(gf)
