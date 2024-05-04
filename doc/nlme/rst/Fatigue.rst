.. container::

   .. container::

      ======= ===============
      Fatigue R Documentation
      ======= ===============

      .. rubric:: Cracks caused by metal fatigue
         :name: cracks-caused-by-metal-fatigue

      .. rubric:: Description
         :name: description

      The ``Fatigue`` data frame has 262 rows and 3 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      Path
         an ordered factor with levels ``1`` < ``2`` < ``3`` < ``4`` <
         ``5`` < ``6`` < ``7`` < ``8`` < ``9`` < ``10`` < ``11`` <
         ``12`` < ``13`` < ``14`` < ``15`` < ``16`` < ``17`` < ``18`` <
         ``19`` < ``20`` < ``21`` giving the test path (or test unit)
         number. The order is in terms of increasing failure time or
         decreasing terminal crack length.

      cycles
         number of test cycles at which the measurement is made
         (millions of cycles).

      relLength
         relative crack length (dimensionless).

      .. rubric:: Details
         :name: details

      These data are given in Lu and Meeker (1993) where they state “We
      obtained the data in Table 1 visually from figure 4.5.2 on page
      242 of Bogdanoff and Kozin (1985).” The data represent the growth
      of cracks in metal for 21 test units. An initial notch of length
      0.90 inches was made on each unit which then was subjected to
      several thousand test cycles. After every 10,000 test cycles the
      crack length was measured. Testing was stopped if the crack length
      exceeded 1.60 inches, defined as a failure, or at 120,000 cycles.

      .. rubric:: Source
         :name: source

      Lu, C. Joséph , and Meeker, William Q. (1993), Using degradation
      measures to estimate a time-to-failure distribution,
      *Technometrics*, **35**, 161-174
