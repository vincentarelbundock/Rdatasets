.. container::

   .. container::

      ========== ===============
      BodyWeight R Documentation
      ========== ===============

      .. rubric:: Rat weight over time for different diets
         :name: rat-weight-over-time-for-different-diets

      .. rubric:: Description
         :name: description

      The ``BodyWeight`` data frame has 176 rows and 4 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      weight
         a numeric vector giving the body weight of the rat (grams).

      Time
         a numeric vector giving the time at which the measurement is
         made (days).

      Rat
         an ordered factor with levels ``2`` < ``3`` < ``4`` < ``1`` <
         ``8`` < ``5`` < ``6`` < ``7`` < ``11`` < ``9`` < ``10`` <
         ``12`` < ``13`` < ``15`` < ``14`` < ``16`` identifying the rat
         whose weight is measured.

      Diet
         a factor with levels ``1`` to ``3`` indicating the diet that
         the rat receives.

      .. rubric:: Details
         :name: details

      Hand and Crowder (1996) describe data on the body weights of rats
      measured over 64 days. These data also appear in Table 2.4 of
      Crowder and Hand (1990). The body weights of the rats (in grams)
      are measured on day 1 and every seven days thereafter until day
      64, with an extra measurement on day 44. The experiment started
      several weeks before “day 1.” There are three groups of rats, each
      on a different diet.

      .. rubric:: Source
         :name: source

      Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in
      S and S-PLUS*, Springer, New York. (Appendix A.3)

      Crowder, M. and Hand, D. (1990), *Analysis of Repeated Measures*,
      Chapman and Hall, London.

      Hand, D. and Crowder, M. (1996), *Practical Longitudinal Data
      Analysis*, Chapman and Hall, London.
