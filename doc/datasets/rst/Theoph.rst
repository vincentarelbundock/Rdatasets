.. container::

   ====== ===============
   Theoph R Documentation
   ====== ===============

   .. rubric:: Pharmacokinetics of Theophylline
      :name: pharmacokinetics-of-theophylline

   .. rubric:: Description
      :name: description

   The ``Theoph`` data frame has 132 rows and 5 columns of data from an
   experiment on the pharmacokinetics of theophylline.

   .. rubric:: Usage
      :name: usage

   ::

      Theoph

   .. rubric:: Format
      :name: format

   An object of class
   ``c("nfnGroupedData", "nfGroupedData", "groupedData", "data.frame")``
   containing the following columns:

   Subject
      an ordered factor with levels ``1``, ..., ``12`` identifying the
      subject on whom the observation was made. The ordering is by
      increasing maximum concentration of theophylline observed.

   Wt
      weight of the subject (kg).

   Dose
      dose of theophylline administered orally to the subject (mg/kg).

   Time
      time since drug administration when the sample was drawn (hr).

   conc
      theophylline concentration in the sample (mg/L).

   .. rubric:: Details
      :name: details

   Boeckmann, Sheiner and Beal (1994) report data from a study by Dr.
   Robert Upton of the kinetics of the anti-asthmatic drug theophylline.
   Twelve subjects were given oral doses of theophylline then serum
   concentrations were measured at 11 time points over the next 25
   hours.

   These data are analyzed in Davidian and Giltinan (1995) and Pinheiro
   and Bates (2000) using a two-compartment open pharmacokinetic model,
   for which a self-starting model function, ``SSfol``, is available.

   This dataset was originally part of package ``nlme``, and that has
   methods (including for ``[``, ``as.data.frame``, ``plot`` and
   ``print``) for its grouped-data classes.

   .. rubric:: Source
      :name: source

   Boeckmann, A. J., Sheiner, L. B. and Beal, S. L. (1994), *NONMEM
   Users Guide: Part V*, NONMEM Project Group, University of California,
   San Francisco.

   Davidian, M. and Giltinan, D. M. (1995) *Nonlinear Models for
   Repeated Measurement Data*, Chapman & Hall (section 5.5, p. 145 and
   section 6.6, p. 176)

   Pinheiro, J. C. and Bates, D. M. (2000) *Mixed-effects Models in S
   and S-PLUS*, Springer (Appendix A.29)

   .. rubric:: See Also
      :name: see-also

   ``SSfol``

   .. rubric:: Examples
      :name: examples

   ::

      require(stats); require(graphics)

      coplot(conc ~ Time | Subject, data = Theoph, show.given = FALSE)
      Theoph.4 <- subset(Theoph, Subject == 4)
      fm1 <- nls(conc ~ SSfol(Dose, Time, lKe, lKa, lCl),
                 data = Theoph.4)
      summary(fm1)
      plot(conc ~ Time, data = Theoph.4,
           xlab = "Time since drug administration (hr)",
           ylab = "Theophylline concentration (mg/L)",
           main = "Observed concentrations and fitted model",
           sub  = "Theophylline data - Subject 4 only",
           las = 1, col = 4)
      xvals <- seq(0, par("usr")[2], length.out = 55)
      lines(xvals, predict(fm1, newdata = list(Time = xvals)),
            col = 4)
