.. container::

   .. container::

      ============= ===============
      playing_cards R Documentation
      ============= ===============

      .. rubric:: Table of Playing Cards in 52-Card Deck
         :name: table-of-playing-cards-in-52-card-deck

      .. rubric:: Description
         :name: description

      A table describing each of the 52 cards in a deck.

      .. rubric:: Usage
         :name: usage

      ::

         playing_cards

      .. rubric:: Format
         :name: format

      A data frame with 52 observations on the following 2 variables.

      number
         The number or card type.

      suit
         Card suit, which takes one of four values: ``Club``,
         ``Diamond``, ``Heart``, or ``Spade``.

      face_card
         Whether the card counts as a face card.

      .. rubric:: Source
         :name: source

      This extremely complex data set was generated from scratch.

      .. rubric:: Examples
         :name: examples

      ::

         playing_cards <- data.frame(
           number = rep(c(2:10, "J", "Q", "K", "A"), 4),
           suit = rep(c("Spade", "Diamond", "Club", "Heart"), rep(13, 4))
         )
         playing_cards$face_card <-
           ifelse(playing_cards$number %in% c(2:10, "A"), "no", "yes")
