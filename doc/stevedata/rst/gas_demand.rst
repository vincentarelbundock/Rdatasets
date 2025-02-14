.. container::

   .. container::

      ========== ===============
      gas_demand R Documentation
      ========== ===============

      .. rubric:: Gasoline Demand in the OECD, 1960-1978
         :name: gasoline-demand-in-the-oecd-1960-1978

      .. rubric:: Description
         :name: description

      A data set on gasoline demand in the OECD countries from 1960 to
      1978

      .. rubric:: Usage
         :name: usage

      .. code:: R

         gas_demand

      .. rubric:: Format
         :name: format

      A data frame with 342 observations on the following 6 variables.

      ``country``
         a character vector for an English country name

      ``year``
         a numeric vector for the year of observation

      ``gas``
         gasoline consumption per car, log-transformed

      ``income``
         real per capita income, log-transformed

      ``price``
         real gasoline price, log-transformed

      ``cars``
         the stock of cars per capita, log-transformed

      .. rubric:: Details
         :name: details

      The data are a simple port from the AER package. Users should read
      Baltagi and Griffin (1983) for more information. The data are
      purely for illustration about panel models.

      Generally, per capita income should not be negative when
      log-transformed, especially for this set of countries. While it is
      clear that such negative values arise from the logarithmic
      transformation of values less than 1, but more than 0, it is not
      clear why per capita income would be on that particular scale.

      The same curiosities emerge for the stock of cars per capita and
      real gasoline price, though proportional values between 0 and 1
      are seemingly plausible (absent my willingness to look further
      into these details).

      No matter, the data are sufficient for replication of Baltagi and
      Griffin (1983) without any further effort from the user. That's
      always nice.

      .. rubric:: References
         :name: references

      Baltagi, Badi H. and James M. Griffin. 1983. "Gasoline Demand in
      the OECD: An Application of Pooling and Testing Procedures"
      *European Economic Review* 22: 117-137.
