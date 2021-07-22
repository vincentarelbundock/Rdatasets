============= ===============
playing_cards R Documentation
============= ===============

Table of Playing Cards in 52-Card Deck
--------------------------------------

Description
~~~~~~~~~~~

A table describing each of the 52 cards in a deck.

Usage
~~~~~

::

   playing_cards

Format
~~~~~~

A data frame with 52 observations on the following 2 variables.

number
   The number or card type.

suit
   Card suit, which takes one of four values: ``Club``, ``Diamond``,
   ``Heart``, or ``Spade``.

face_card
   Whether the card counts as a face card.

Source
~~~~~~

This extremely complex data set was generated from scratch.

Examples
~~~~~~~~

::


   playing_cards <- data.frame(
       number = rep(c(2:10, "J", "Q", "K", "A"), 4),
       suit = rep(c("Spade", "Diamond", "Club", "Heart"), rep(13, 4)))
   playing_cards$face_card <-
       ifelse(playing_cards$number %in% c(2:10, "A"), "no", "yes")
