.. container::

   .. container::

      ===== ===============
      cards R Documentation
      ===== ===============

      .. rubric:: Deck of cards
         :name: deck-of-cards

      .. rubric:: Description
         :name: description

      All the cards in a standard deck.

      .. rubric:: Usage
         :name: usage

      ::

         cards

      .. rubric:: Format
         :name: format

      A data frame with 52 observations on the following 4 variables.

      value
         a factor with levels ``10`` ``2`` ``3`` ``4`` ``5`` ``6`` ``7``
         ``8`` ``9`` ``A`` ``J`` ``K`` ``Q``

      color
         a factor with levels ``black`` ``red``

      suit
         a factor with levels ``Club`` ``Diamond`` ``Heart`` ``Spade``

      face
         a logical vector

      .. rubric:: Examples
         :name: examples

      ::

         table(cards$value)
         table(cards$color)
         table(cards$suit)
         table(cards$face)
         table(cards$suit, cards$face)
