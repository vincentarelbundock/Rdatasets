.. container::

   .. container::

      === ===============
      Gun R Documentation
      === ===============

      .. rubric:: Methods for firing naval guns
         :name: methods-for-firing-naval-guns

      .. rubric:: Description
         :name: description

      The ``Gun`` data frame has 36 rows and 4 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      rounds
         a numeric vector

      Method
         a factor with levels ``M1`` ``M2``

      Team
         an ordered factor with levels ``T1S`` < ``T3S`` < ``T2S`` <
         ``T1A`` < ``T2A`` < ``T3A`` < ``T1H`` < ``T3H`` < ``T2H``

      Physique
         an ordered factor with levels ``Slight`` < ``Average`` <
         ``Heavy``

      .. rubric:: Details
         :name: details

      Hicks (p.180, 1993) reports data from an experiment on methods for
      firing naval guns. Gunners of three different physiques (slight,
      average, and heavy) tested two firing methods. Both methods were
      tested twice by each of nine teams of three gunners with identical
      physique. The response was the number of rounds fired per minute.

      .. rubric:: Source
         :name: source

      Hicks, C. R. (1993), *Fundamental Concepts in the Design of
      Experiments (4th ed)*, Harcourt Brace, New York.
