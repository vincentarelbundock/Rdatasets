.. container::

   .. container::

      =================== ===============
      AustralianElections R Documentation
      =================== ===============

      .. rubric:: elections to Australian House of Representatives,
         1949-2016
         :name: elections-to-australian-house-of-representatives-1949-2016

      .. rubric:: Description
         :name: description

      Aggregate data on the 24 elections to Australia's House of
      Representatives, 1949 to 2016.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(AustralianElections)

      .. rubric:: Format
         :name: format

      A data frame with the following variables:

      ``date``
         date of election, stored using the ``Date`` class

      ``Seats``
         numeric, number of seats in the House of Representatives

      ``Uncontested``
         numeric, number of uncontested seats

      ``ALPSeats``
         numeric, number of seats won by the Australian Labor Party

      ``LPSeats``
         numeric, number of seats won by the Liberal Party

      ``NPSeats``
         numeric, number of seats won by the National Party (previously
         known as the Country Party)

      ``OtherSeats``
         numeric, number of seats won by other parties and/or
         independent candidates

      ``ALP``
         numeric, percentage of first preference votes cast for
         Australian Labor Party candidates

      ``ALP2PP``
         numeric, percentage of the two-party preferred vote won by
         Australian Labor Party candidates

      ``LP``
         numeric, percent of first preference votes cast for Liberal
         Party candidates

      ``NP``
         numeric, percent of first preference votes cast for National
         Party (Country Party) candidates

      ``DLP``
         numeric, percent of first preference votes cast for Democratic
         Labor Party candidates

      ``Dem``
         numeric, percent of first preference votes cast for Australian
         Democrat candidates

      ``Green``
         numeric, percent of first preference votes cast for Green Party
         candidates

      ``Hanson``
         numeric, percent of first preference votes cast for candidates
         from Pauline Hanson's One Nation party

      ``Com``
         numeric, percent of first preference votes cast for Communist
         Party candidates

      ``AP``
         numeric, percent of first preference votes cast for Australia
         Party candidates

      ``Informal``
         numeric, percent of ballots cast that are spoiled, blank, or
         otherwise uncountable (usually because of errors in enumerating
         preferences)

      ``Turnout``
         numeric, percent of enrolled voters recorded as having turned
         out to vote (Australia has compulsory voting)

      .. rubric:: Note
         :name: note

      The Liberal National Party of Queensland formed in 2008 after a
      merger of the Liberal Party and the National Party. In all
      elections following 2008, they have been categorised under ``LP``.

      .. rubric:: Source
         :name: source

      Australian Electoral Commission. https://www.aec.gov.au.

      .. rubric:: References
         :name: references

      Jackman, Simon. 2009. *Bayesian Analysis for the Social Sciences*.
      Wiley: Hoboken, New Jersey. Example 3.5.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(AustralianElections)
         attach(AustralianElections)
         alpSeatShare <- ALPSeats/Seats
         alpVoteShare <- ALP2PP/100

         ## log-odds transforms
         x <- log(alpVoteShare/(1-alpVoteShare))
         y <- log(alpSeatShare/(1-alpSeatShare))

         ols <- lm(y~x)   ## Tufte-style seats-votes regression

         xseq <- seq(-4.5,4.5,length=500)
         yhat <- coef(ols)[1] + coef(ols)[2]*xseq
         yhat <- exp(yhat)/(1+exp(yhat))
         xseq <- exp(xseq)/(1+exp(xseq))

         ## seats vote curve
         plot(x=alpVoteShare,
              y=alpSeatShare,
              xlab="ALP Vote Share",
              ylab="ALP Seat Share")
         lines(xseq,yhat,lwd=2)
         abline(h=.5,lty=2)
         abline(v=.5,lty=2)
