.. container::

   .. container::

      ======== ===============
      iraqVote R Documentation
      ======== ===============

      .. rubric:: U.S. Senate vote on the use of force against Iraq,
         2002.
         :name: u.s.-senate-vote-on-the-use-of-force-against-iraq-2002.

      .. rubric:: Description
         :name: description

      On October 11, 2002, the United States Senate voted 77-23 to
      authorize the use of military force against Iraq. This data set
      lists the “Ayes” and “Nays” for each Senator and some covariates.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(iraqVote)

      .. rubric:: Format
         :name: format

      A data frame with 100 observations on the following 6 variables.

      ``y``
         a numeric vector, the recorded vote (1 if Aye, 0 if Nay)

      ``state.abb``
         two letter abbreviation for each state

      ``name``
         senator name, party and state, e.g., ``AKAKA (D HI)``

      ``rep``
         logical, ``TRUE`` for Republican senators

      ``state.name``
         name of state

      ``gorevote``
         numeric, the vote share recorded by Al Gore in the
         corresponding state in the 2000 Presidential election

      .. rubric:: Details
         :name: details

      The only Republican to vote against the resolution was Lincoln
      Chafee (Rhode Island); Democrats split 29-22 in favor of the
      resolution.

      .. rubric:: Source
         :name: source

      Keith Poole, 107th Senate Roll Call Data.
      https://voteview.com/static/data/out/votes/S107_votes.ord The Iraq
      vote is vote number 617.

      David Leip's Atlas of U.S. Presidential Elections.
      https://uselectionatlas.org

      .. rubric:: References
         :name: references

      Jackman, Simon. 2009. *Bayesian Analysis for the Social Sciences*.
      Wiley: Chichester. Example 8.3.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(iraqVote)
         ## probit model
         glm1 <- glm(y ~ gorevote + rep,
                     data=iraqVote,
                     family=binomial(link=probit))
