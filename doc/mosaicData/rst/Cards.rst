.. container::

   ===== ===============
   Cards R Documentation
   ===== ===============

   .. rubric:: Standard Deck of Cards
      :name: Cards

   .. rubric:: Description
      :name: description

   A character vector with two or three character representations of
   each card in a standard 52-card deck.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      Cards

   .. rubric:: Details
      :name: details

   The 2 of clubs is represented as "2C", while the 10 of diamonds is
   "10D".

   .. rubric:: Examples
      :name: examples

   .. code:: R

      if (require(mosaic)) {
        deal(Cards, 13)        # bridge hand
        deal(Cards, 5)         # poker hand
        shuffle(Cards)         # shuffled deck
      }
