.. container::

   ======== ===============
   Grunfeld R Documentation
   ======== ===============

   .. rubric:: Grunfeld's Investment Data
      :name: grunfelds-investment-data

   .. rubric:: Description
      :name: description

   Panel data on 11 large US manufacturing firms over 20 years, for the
   years 1935–1954.

   .. rubric:: Usage
      :name: usage

   ::

      data("Grunfeld")

   .. rubric:: Format
      :name: format

   A data frame containing 20 annual observations on 3 variables for 11
   firms.

   invest
      Gross investment, defined as additions to plant and equipment plus
      maintenance and repairs in millions of dollars deflated by the
      implicit price deflator of producers' durable equipment (base
      1947).

   value
      Market value of the firm, defined as the price of common shares at
      December 31 (or, for WH, IBM and CH, the average price of December
      31 and January 31 of the following year) times the number of
      common shares outstanding plus price of preferred shares at
      December 31 (or average price of December 31 and January 31 of the
      following year) times number of preferred shares plus total book
      value of debt at December 31 in millions of dollars deflated by
      the implicit GNP price deflator (base 1947).

   capital
      Stock of plant and equipment, defined as the accumulated sum of
      net additions to plant and equipment deflated by the implicit
      price deflator for producers' durable equipment (base 1947) minus
      depreciation allowance deflated by depreciation expense deflator
      (10 years moving average of wholesale price index of metals and
      metal products, base 1947).

   firm
      factor with 11 levels: ``"General Motors"``, ``"US Steel"``,
      ``"General Electric"``, ``"Chrysler"``, ``"Atlantic Refining"``,
      ``"IBM"``, ``"Union Oil"``, ``"Westinghouse"``, ``"Goodyear"``,
      ``"Diamond Match"``, ``"American Steel"``.

   year
      Year.

   .. rubric:: Details
      :name: details

   This is a popular data set for teaching purposes. Unfortunately,
   there exist several different versions (see Kleiber and Zeileis,
   2010, for a detailed discussion). In particular, the version provided
   by Greene (2003) has a couple of errors for ``"US Steel"`` (firm 2):
   investment in 1940 is 261.6 (instead of the correct 361.6),
   investment in 1952 is 645.2 (instead of the correct 645.5), capital
   in 1946 is 132.6 (instead of the correct 232.6).

   Here, we provide the original data from Grunfeld (1958). The data for
   the first 10 firms are identical to those of Baltagi (2002) or
   Baltagi (2005), now also used by Greene (2008).

   .. rubric:: Source
      :name: source

   The data are taken from Grunfeld (1958, Appendix, Tables 2–9 and
   11–13).

   .. rubric:: References
      :name: references

   Baltagi, B.H. (2002). *Econometrics*, 3rd ed., Berlin:
   Springer-Verlag.

   Baltagi, B.H. (2005). *Econometric Analysis of Panel Data*, 3rd ed.
   Chichester, UK: John Wiley.

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   Greene, W.H. (2008). *Econometric Analysis*, 6th edition. Upper
   Saddle River, NJ: Prentice Hall.

   Grunfeld, Y. (1958). *The Determinants of Corporate Investment*.
   Unpublished Ph.D. Dissertation, University of Chicago.

   Kleiber, C., and Zeileis, A. (2010). “The Grunfeld Data at 50.”
   *German Economic Review*, **11**\ (4), 404–417.
   `doi:10.1111/j.1468-0475.2010.00513.x <https://doi.org/10.1111/j.1468-0475.2010.00513.x>`__

   .. rubric:: See Also
      :name: see-also

   ``Baltagi2002``, ``Greene2003``

   .. rubric:: Examples
      :name: examples

   ::

      data("Grunfeld", package = "AER")

      ## Greene (2003)
      ## subset of data with mistakes
      ggr <- subset(Grunfeld, firm %in% c("General Motors", "US Steel",
        "General Electric", "Chrysler", "Westinghouse"))
      ggr[c(26, 38), 1] <- c(261.6, 645.2)
      ggr[32, 3] <- 232.6

      ## Tab. 14.2, col. "GM"
      fm_gm <- lm(invest ~ value + capital, data = ggr, subset = firm == "General Motors")
      mean(residuals(fm_gm)^2)   ## Greene uses MLE

      ## Tab. 14.2, col. "Pooled"
      fm_pool <- lm(invest ~ value + capital, data = ggr)

      ## equivalently
      library("plm")
      pggr <- pdata.frame(ggr, c("firm", "year"))
      library("systemfit")
      fm_ols <- systemfit(invest ~ value + capital, data = pggr, method = "OLS")
      fm_pols <- systemfit(invest ~ value + capital, data = pggr, method = "OLS",
        pooled = TRUE)

      ## Tab. 14.1
      fm_sur <- systemfit(invest ~ value + capital, data = pggr, method = "SUR",
        methodResidCov = "noDfCor")
      fm_psur <- systemfit(invest ~ value + capital, data = pggr, method = "SUR", pooled = TRUE,
        methodResidCov = "noDfCor", residCovWeighted = TRUE)

      ## Further examples:
      ## help("Greene2003")



      ## Panel models
      library("plm")
      pg <- pdata.frame(subset(Grunfeld, firm != "American Steel"), c("firm", "year"))

      fm_fe <- plm(invest ~ value + capital, model = "within", data = pg)
      summary(fm_fe)
      coeftest(fm_fe, vcov = vcovHC)

      fm_reswar <- plm(invest ~ value + capital, data = pg,
        model = "random", random.method = "swar")
      summary(fm_reswar)

      ## testing for random effects
      fm_ols <- plm(invest ~ value + capital, data = pg, model = "pooling")
      plmtest(fm_ols, type = "bp")
      plmtest(fm_ols, type = "honda")

      ## Random effects models
      fm_ream <- plm(invest ~ value + capital, data = pg, model = "random",
        random.method = "amemiya")
      fm_rewh <- plm(invest ~ value + capital, data = pg, model = "random",
        random.method = "walhus")
      fm_rener <- plm(invest ~ value + capital, data = pg, model = "random",
        random.method = "nerlove")

      ## Baltagi (2005), Tab. 2.1
      rbind(
        "OLS(pooled)" = coef(fm_ols),
        "FE" = c(NA, coef(fm_fe)),
        "RE-SwAr" = coef(fm_reswar),
        "RE-Amemiya" = coef(fm_ream),
        "RE-WalHus" = coef(fm_rewh),
        "RE-Nerlove" = coef(fm_rener))

      ## Hausman test
      phtest(fm_fe, fm_reswar)

      ## Further examples:
      ## help("Baltagi2002")
      ## help("Greene2003")
