.. container::

   .. container::

      ========= ===============
      USMacroSW R Documentation
      ========= ===============

      .. rubric:: US Macroeconomic Data (1957–2005, Stock & Watson)
         :name: us-macroeconomic-data-19572005-stock-watson

      .. rubric:: Description
         :name: description

      Time series data on 7 (mostly) US macroeconomic variables for
      1957–2005.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("USMacroSW")

      .. rubric:: Format
         :name: format

      A quarterly multiple time series from 1957(1) to 2005(1) with 7
      variables.

      unemp
         Unemployment rate.

      cpi
         Consumer price index.

      ffrate
         Federal funds interest rate.

      tbill
         3-month treasury bill interest rate.

      tbond
         1-year treasury bond interest rate.

      gbpusd
         GBP/USD exchange rate (US dollar in cents per British pound).

      gdpjp
         GDP for Japan.

      .. rubric:: Details
         :name: details

      The US Consumer Price Index is measured using monthly surveys and
      is compiled by the Bureau of Labor Statistics (BLS). The
      unemployment rate is computed from the BLS's Current Population.
      The quarterly data used here were computed by averaging the
      monthly values. The interest data are the monthly average of daily
      rates as reported by the Federal Reserve and the dollar-pound
      exchange rate data are the monthly average of daily rates; both
      are for the final month in the quarter. Japanese real GDP data
      were obtained from the OECD.

      .. rubric:: Source
         :name: source

      Online complements to Stock and Watson (2007).

      .. rubric:: References
         :name: references

      Stock, J.H. and Watson, M.W. (2007). *Introduction to
      Econometrics*, 2nd ed. Boston: Addison Wesley.

      .. rubric:: See Also
         :name: see-also

      ``StockWatson2007``, ``USMacroSWM``, ``USMacroSWQ``, ``USMacroB``,
      ``USMacroG``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Stock and Watson (2007)
         data("USMacroSW", package = "AER")
         library("dynlm")
         library("strucchange")
         usm <- ts.intersect(USMacroSW, 4 * 100 * diff(log(USMacroSW[, "cpi"])))
         colnames(usm) <- c(colnames(USMacroSW), "infl")

         ## Equations 14.7, 14.13, 14.16, 14.17, pp. 536
         fm_ar1 <- dynlm(d(infl) ~ L(d(infl)),
           data = usm, start = c(1962,1), end = c(2004,4))
         fm_ar4 <- dynlm(d(infl) ~ L(d(infl), 1:4), 
           data = usm, start = c(1962,1), end = c(2004,4))
         fm_adl41 <- dynlm(d(infl) ~ L(d(infl), 1:4) + L(unemp),
           data = usm, start = c(1962,1), end = c(2004,4))
         fm_adl44 <- dynlm(d(infl) ~ L(d(infl), 1:4) + L(unemp, 1:4),
           data = usm, start = c(1962,1), end = c(2004,4))
         coeftest(fm_ar1, vcov = sandwich)
         coeftest(fm_ar4, vcov = sandwich)
         coeftest(fm_adl41, vcov = sandwich)
         coeftest(fm_adl44, vcov = sandwich)

         ## Granger causality test mentioned on p. 547
         waldtest(fm_ar4, fm_adl44, vcov = sandwich)  

         ## Figure 14.5, p. 570
         ## SW perform partial break test of unemp coefs
         ## here full model is used
         mf <- model.frame(fm_adl44) ## re-use fm_adl44
         mf <- ts(as.matrix(mf), start = c(1962, 1), freq = 4)
         colnames(mf) <- c("y", paste("x", 1:8, sep = ""))
         ff <- as.formula(paste("y", "~",  paste("x", 1:8, sep = "", collapse = " + ")))
         fs <- Fstats(ff, data = mf, from = 0.1)
         plot(fs)
         lines(boundary(fs, alpha = 0.01), lty = 2, col = 2)
         lines(boundary(fs, alpha = 0.1), lty = 3, col = 2)

         ## More examples can be found in:
         ## help("StockWatson2007")
