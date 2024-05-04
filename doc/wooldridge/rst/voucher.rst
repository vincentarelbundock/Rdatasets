.. container::

   .. container::

      ======= ===============
      voucher R Documentation
      ======= ===============

      .. rubric:: voucher
         :name: voucher

      .. rubric:: Description
         :name: description

      Wooldridge Source: Rouse, C.E. (1998), “Private School Vouchers
      and Student Achievement: An Evaluation of the Milwaukee Parental
      Choice Program,” Quarterly Journal of Economics 113, 553-602.
      Professor Rouse kindly provided the original data set from her
      paper. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('voucher')

      .. rubric:: Format
         :name: format

      A data.frame with 990 observations on 19 variables:

      -  **studyid:** student identifier

      -  **black:** = 1 if African-American

      -  **hispanic:** = 1 if Hispanic

      -  **female:** = 1 if female

      -  **appyear:** year of first application: 90 to 93

      -  **mnce:** math NCE test score, 1994

      -  **select:** = 1 if ever selected to attend choice school

      -  **choice:** = 1 if attending choice school, 1994

      -  **selectyrs:** years selected to attend choice school

      -  **choiceyrs:** years attended choice school

      -  **mnce90:** mnce in 1990

      -  **selectyrs1:** = 1 if selectyrs == 1

      -  **selectyrs2:** = 1 if selectyrs == 2

      -  **selectyrs3:** = 1 if selectyrs == 3

      -  **selectyrs4:** = 1 if selectyrs == 4

      -  **choiceyrs1:** = 1 if choiceyrs == 1

      -  **choiceyrs2:** = 1 if choiceyrs == 2

      -  **choiceyrs3:** = 1 if choiceyrs == 3

      -  **choiceyrs4:** = 1 if choiceyrs == 4

      .. rubric:: Notes
         :name: notes

      This is a condensed version of the data set used by Professor
      Rouse. The original data set had missing information on many
      variables, including post-policy and pre-policy test scores. I did
      not impute any missing data and have dropped observations that
      were unusable without filling in missing data. There are 990
      students in the current data set but pre-policy test scores are
      available for only 328 of them. This is a good example of where
      eligibility for a program is randomized but participation need not
      be. In addition, even if we look at just the effect of eligibility
      (captured in the variable selectyrs) on the math test score
      (mnce), we need to confront the fact that attrition (students
      leaving the district) can bias the results. Controlling for the
      pre-policy test score, mnce90, can help – but at the cost of
      losing two-thirds of the observations. A simple regression of mnce
      on selectyrs followed by a multiple regression that adds mnce90 as
      a control is informative. The selectyrs dummy variables can be
      used as instrumental variables for the choiceyrs variable to try
      to estimate the effect of actually participating in the program
      (rather than estimating the so- called intention-to-treat effect).
      Computer Exercise C15.11 steps through the details.

      Used in Text: pages 550-551

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(voucher)
