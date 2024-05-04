.. container::

   .. container::

      =========== ===============
      DutchAdvert R Documentation
      =========== ===============

      .. rubric:: TV and Radio Advertising Expenditures Data
         :name: tv-and-radio-advertising-expenditures-data

      .. rubric:: Description
         :name: description

      Time series of television and radio advertising expenditures (in
      real terms) in The Netherlands.

      .. rubric:: Usage
         :name: usage

      ::

         data("DutchAdvert")

      .. rubric:: Format
         :name: format

      A four-weekly multiple time series from 1978(1) to 1994(13) with 2
      variables.

      tv
         Television advertising expenditures.

      radio
         Radio advertising expenditures.

      .. rubric:: Source
         :name: source

      Originally available as an online supplement to Franses (1998).
      Now available via online complements to Franses, van Dijk and
      Opschoor (2014).

      https://www.cambridge.org/us/academic/subjects/economics/econometrics-statistics-and-mathematical-economics/time-series-models-business-and-economic-forecasting-2nd-edition

      .. rubric:: References
         :name: references

      Franses, P.H. (1998). *Time Series Models for Business and
      Economic Forecasting*. Cambridge, UK: Cambridge University Press.

      Franses, P.H., van Dijk, D. and Opschoor, A. (2014). *Time Series
      Models for Business and Economic Forecasting*, 2nd ed. Cambridge,
      UK: Cambridge University Press.

      .. rubric:: See Also
         :name: see-also

      ``Franses1998``

      .. rubric:: Examples
         :name: examples

      ::

         data("DutchAdvert")
         plot(DutchAdvert)

         ## EACF tables (Franses 1998, Sec. 5.1, p. 99)
         ctrafo <- function(x) residuals(lm(x ~ factor(cycle(x))))
         ddiff <- function(x) diff(diff(x, frequency(x)), 1)
         eacf <- function(y, lag = 12) {
           stopifnot(all(lag > 0))
           if(length(lag) < 2) lag <- 1:lag
           rval <- sapply(
             list(y = y, dy = diff(y), cdy = ctrafo(diff(y)),
                  Dy = diff(y, frequency(y)), dDy = ddiff(y)),
             function(x) acf(x, plot = FALSE, lag.max = max(lag))$acf[lag + 1])
           rownames(rval) <- lag
           return(rval)
         }

         ## Franses (1998, p. 103), Table 5.4
         round(eacf(log(DutchAdvert[,"tv"]), lag = c(1:19, 26, 39)), digits = 3)
