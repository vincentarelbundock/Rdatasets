.. container::

   .. container::

      ============== ===============
      anes_prochoice R Documentation
      ============== ===============

      .. rubric:: Abortion Attitudes (ANES, 2012)
         :name: abortion-attitudes-anes-2012

      .. rubric:: Description
         :name: description

      A simple data set for in-class illustration about how to estimate
      and interpret interactive relationships. The data here are
      deliberately minimal for that end.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         anes_prochoice

      .. rubric:: Format
         :name: format

      A data frame with 5914 observations on the following 14 variables.

      ``version``
         version identifier from ANES

      ``caseid``
         time-series case identifier from ANES

      ``health``
         oppose/"NFNO"/favor abortion if pregnancy would hurt woman

      ``fatal``
         oppose/"NFNO"/favor abortion if pregnancy would cause woman to
         die

      ``incest``
         oppose/"NFNO"/favor abortion if pregnancy was caused by incest

      ``rape``
         oppose/"NFNO"/favor abortion if pregnancy was caused by rape

      ``bd``
         oppose/"NFNO"/favor abortion if fetus would be born with
         serious birth defect

      ``fin``
         oppose/"NFNO"/favor abortion if having child would impose
         financial hardship

      ``sex``
         oppose/"NFNO"/favor abortion if the child will not be the sex
         the woman wants

      ``choice``
         oppose/"NFNO"/favor abortion if woman chooses to have one

      ``pid``
         respondent's partisanship (Democrat, Independent, Republican)

      ``knowspeaker``
         was the respondent able to correctly identify the Speaker of
         the House (John Boehner)

      ``addchoice``
         an additive scale of the abortion scores

      ``lchoice``
         a continuous latent scale of pro-choice scores (from a simple
         graded response model)

      .. rubric:: Details
         :name: details

      "NFNO" = "Neither Favor Nor Oppose". All abortion prompts are on a
      0-2 scale where 0 is oppose, 1 is "NFNO", and 2 is favor. The
      respondent's party identification is on a similar scale where 0 =
      "Democrat", 1 = "Independent", and 2 = "Republican". The additive
      scale of abortion scores has a minimum of 0 and a maximum of 16.

      .. rubric:: Source
         :name: source

      Data come from ANES's (2012) time series.
