.. container::

   .. container::

      ====== ===============
      ansett R Documentation
      ====== ===============

      .. rubric:: Passenger numbers on Ansett airline flights
         :name: passenger-numbers-on-ansett-airline-flights

      .. rubric:: Description
         :name: description

      The data features a major pilots' industrial dispute which results
      in some weeks having zero passengers. There were also at least two
      changes in the definitions of passenger classes.

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``

      .. rubric:: Details
         :name: details

      ``ansett`` is a weekly ``tsibble`` with one value:

      =========== ===========================================
      Passengers: Total air passengers travelling with Ansett
      \           
      =========== ===========================================

      Each series is uniquely identified using two keys:

      +-----------+---------------------------------------------------------+
      | Airports: | The airports that passengers are travelling between     |
      |           | (both directions)                                       |
      +-----------+---------------------------------------------------------+
      | Class:    | The class of the ticket.                                |
      +-----------+---------------------------------------------------------+
      |           |                                                         |
      +-----------+---------------------------------------------------------+

      .. rubric:: Source
         :name: source

      Ansett Airlines (which no longer exists).

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         ansett
