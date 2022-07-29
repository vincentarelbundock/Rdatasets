.. container::

   ===== ===============
   poker R Documentation
   ===== ===============

   .. rubric:: Poker winnings during 50 sessions
      :name: poker-winnings-during-50-sessions

   .. rubric:: Description
      :name: description

   Poker winnings (and losses) for 50 days by a professional poker
   player.

   .. rubric:: Usage
      :name: usage

   ::

      poker

   .. rubric:: Format
      :name: format

   A data frame with 49 observations on the following variable.

   winnings
      Poker winnings and losses, in US dollars.

   .. rubric:: Source
      :name: source

   Anonymity has been requested by the player.

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)

      ggplot(poker, aes(x = winnings)) +
        geom_histogram(binwidth = 250)
