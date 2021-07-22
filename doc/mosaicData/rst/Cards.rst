===== ===============
Cards R Documentation
===== ===============

Standard Deck of Cards
----------------------

Description
~~~~~~~~~~~

A character vector with two or three character representations of each
card in a standard 52-card deck.

Usage
~~~~~

::

   Cards

Details
~~~~~~~

The 2 of clubs is represented as "2C", while the 10 of diamonds is
"10D".

Examples
~~~~~~~~

::

   if (require(mosaic)) {
     deal(Cards, 13)        # bridge hand
     deal(Cards, 5)         # poker hand
     shuffle(Cards)         # shuffled deck
   }
