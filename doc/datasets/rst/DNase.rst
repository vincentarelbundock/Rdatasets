.. container::

   ===== ===============
   DNase R Documentation
   ===== ===============

   .. rubric:: Elisa assay of DNase
      :name: elisa-assay-of-dnase

   .. rubric:: Description
      :name: description

   The ``DNase`` data frame has 176 rows and 3 columns of data obtained
   during development of an ELISA assay for the recombinant protein
   DNase in rat serum.

   .. rubric:: Usage
      :name: usage

   ::

      DNase

   .. rubric:: Format
      :name: format

   An object of class
   ``c("nfnGroupedData", "nfGroupedData", "groupedData", "data.frame")``
   containing the following columns:

   Run
      an ordered factor with levels ``10`` < ... < ``3`` indicating the
      assay run.

   conc
      a numeric vector giving the known concentration of the protein.

   density
      a numeric vector giving the measured optical density
      (dimensionless) in the assay. Duplicate optical density
      measurements were obtained.

   .. rubric:: Details
      :name: details

   This dataset was originally part of package ``nlme``, and that has
   methods (including for ``[``, ``as.data.frame``, ``plot`` and
   ``print``) for its grouped-data classes.

   .. rubric:: Source
      :name: source

   Davidian, M. and Giltinan, D. M. (1995) *Nonlinear Models for
   Repeated Measurement Data*, Chapman & Hall (section 5.2.4, p. 134)

   Pinheiro, J. C. and Bates, D. M. (2000) *Mixed-effects Models in S
   and S-PLUS*, Springer.

   .. rubric:: Examples
      :name: examples

   ::

      require(stats); require(graphics)

      coplot(density ~ conc | Run, data = DNase,
             show.given = FALSE, type = "b")
      coplot(density ~ log(conc) | Run, data = DNase,
             show.given = FALSE, type = "b")
      ## fit a representative run
      fm1 <- nls(density ~ SSlogis( log(conc), Asym, xmid, scal ),
          data = DNase, subset = Run == 1)
      ## compare with a four-parameter logistic
      fm2 <- nls(density ~ SSfpl( log(conc), A, B, xmid, scal ),
          data = DNase, subset = Run == 1)
      summary(fm2)
      anova(fm1, fm2)
