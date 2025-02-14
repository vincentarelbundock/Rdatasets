.. container::

   .. container::

      ======= ===============
      chile88 R Documentation
      ======= ===============

      .. rubric:: Voting Intentions in the 1988 Chilean Plebiscite
         :name: voting-intentions-in-the-1988-chilean-plebiscite

      .. rubric:: Description
         :name: description

      A data set on voting intentions in the 1988 Chilean plebiscite,
      which ultimately ended the military junta rule of Augusto
      Pinochet.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         chile88

      .. rubric:: Format
         :name: format

      A data frame with 2700 observations on the following 8 variables.

      ``region``
         a character vector for the region of Chile in which the
         respondent lives

      ``pop``
         the population size of the respondent's community

      ``sex``
         a numeric vector that equals 1 if the respondent is a woman

      ``age``
         a numeric vector for the age of the respondent

      ``educ``
         a character vector indicating whether the respondent has a
         primary (P), secondary (S), or post-secondary (PS) education

      ``income``
         a numeric vector for respondent's monthly income (in pesos)

      ``sq``
         a numeric vector for the scale of support for the status quo in
         Chile

      ``vote``
         a character vector for the vote intention of the respondent
         (see details)

      .. rubric:: Details
         :name: details

      Data were manually downloaded from John Fox's website. You will
      see his version of these data as ``Chile`` in the carData package.
      I changed a few things that are ultimately cosmetic. It's
      basically this data set.

      The vote variable communicates vote intentions, whether to vote
      "Yes" (Y) to continue the Pinochet regime, to vote "No" (N) to end
      the Pinochet regime, to abstain (A) from a vote, or whether the
      respondent is undecided (U). 168 respondents did not answer the
      question.

      Fox (2008, 336) does not say much about the status quo variable,
      and on what scale it is. It can only be easily inferred that
      higher values = more support for the status quo.

      You may find it in your interest to relabel the "region" variable.
      In these data, the regions are Central ("C"), Metropolitan
      Santiago area ("M"), North ("N"), South ("S"), and the city of
      Santiago ("SA").

      More information about the underlying source of the data would be
      more than welcome. Any information about these data, beyond the
      kind of R documentation files about its pedagogical use, is hard
      to find. This is a roundabout way of saying be cautious about any
      "real-world" use of these data beyond learning statistical
      methods. That is ultimately its intended use.

      .. rubric:: References
         :name: references

      Fox, John. 2008. *Applied Regression Analysis and Generalized
      Linear Models* (2nd ed.). Los Angeles, CA: Sage.
