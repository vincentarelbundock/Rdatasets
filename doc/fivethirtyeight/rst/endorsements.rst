.. container::

   .. container::

      ============ ===============
      endorsements R Documentation
      ============ ===============

      .. rubric:: Pols And Polls Say The Same Thing: Jeb Bush Is A Weak
         Front-Runner
         :name: pols-and-polls-say-the-same-thing-jeb-bush-is-a-weak-front-runner

      .. rubric:: Description
         :name: description

      The raw data behind the story "Pols And Polls Say The Same Thing:
      Jeb Bush Is A Weak Front-Runner"
      https://fivethirtyeight.com/features/pols-and-polls-say-the-same-thing-jeb-bush-is-a-weak-front-runner/.
      This data includes something we call "endorsement points," an
      attempt to quantify the importance of endorsements by weighting
      each one according to the position held by the endorser: 10 points
      for each governor, 5 points for each senator and 1 point for each
      representative

      .. rubric:: Usage
         :name: usage

      .. code:: R

         endorsements

      .. rubric:: Format
         :name: format

      A data frame with 109 rows representing candidates and 9
      variables:

      year
         Election year

      party
         Political party

      candidate
         Candidate running in primary

      endorsement_points
         Weighted endorsements through June 30th of the year before the
         primary

      percentage_endorsement_points
         Percentage of total weighted endorsement points for the
         candidate's political party through June 30th of the year
         before the primary

      money_raised
         Money raised through June 30th of the year before the primary

      percentage_of_money
         Percentage of total money raised by the candidate's political
         party through June 30th of the year before the primary

      primary_vote_percentage
         Percentage of votes won in the primary

      won_primary
         Did the candidate win the primary?

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/tree/master/endorsements-june-30
