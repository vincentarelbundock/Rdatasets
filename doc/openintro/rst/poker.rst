===== ===============
poker R Documentation
===== ===============

Poker winnings during 50 sessions
---------------------------------

Description
~~~~~~~~~~~

Poker winnings (and losses) for 50 days by a professional poker player.

Usage
~~~~~

::

   poker

Format
~~~~~~

A data frame with 49 observations on the following variable.

winnings
   Poker winnings and losses, in US dollars.

Source
~~~~~~

Anonymity has been requested by the player.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(poker, aes(x = winnings)) +
     geom_histogram(binwidth = 250)
