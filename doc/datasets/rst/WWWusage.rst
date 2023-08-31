.. container::

   ======== ===============
   WWWusage R Documentation
   ======== ===============

   .. rubric:: Internet Usage per Minute
      :name: WWWusage

   .. rubric:: Description
      :name: description

   A time series of the numbers of users connected to the Internet
   through a server every minute.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      WWWusage

   .. rubric:: Format
      :name: format

   A time series of length 100.

   .. rubric:: Source
      :name: source

   Durbin, J. and Koopman, S. J. (2001). *Time Series Analysis by State
   Space Methods*. Oxford University Press.

   .. rubric:: References
      :name: references

   Makridakis, S., Wheelwright, S. C. and Hyndman, R. J. (1998).
   *Forecasting: Methods and Applications*. Wiley.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(graphics)
      work <- diff(WWWusage)
      par(mfrow = c(2, 1)); plot(WWWusage); plot(work)
      ## Not run: 
      require(stats)
      aics <- matrix(, 6, 6, dimnames = list(p = 0:5, q = 0:5))
      for(q in 1:5) aics[1, 1+q] <- arima(WWWusage, c(0, 1, q),
          optim.control = list(maxit = 500))$aic
      for(p in 1:5)
         for(q in 0:5) aics[1+p, 1+q] <- arima(WWWusage, c(p, 1, q),
             optim.control = list(maxit = 500))$aic
      round(aics - min(aics, na.rm = TRUE), 2)

      ## End(Not run)
