.. container::

   .. container::

      ========== ===============
      gafa_stock R Documentation
      ========== ===============

      .. rubric:: GAFA stock prices
         :name: gafa-stock-prices

      .. rubric:: Description
         :name: description

      Historical stock prices from 2014-2018 for Google, Amazon,
      Facebook and Apple. All prices are in $USD.

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``

      .. rubric:: Details
         :name: details

      ``gafa_stock`` is a ``tsibble`` containing data on irregular
      trading days:

      ========== =========================================
      Open:      The opening price for the stock.
      High:      The stock's highest trading price.
      Low:       The stock's lowest trading price.
      Close:     The closing price for the stock.
      Adj_Close: The adjusted closing price for the stock.
      Volume:    The amount of stock traded.
      \          
      ========== =========================================

      Each stock is uniquely identified by one key:

      ======= ================================
      Symbol: The ticker symbol for the stock.
      \       
      ======= ================================

      .. rubric:: Source
         :name: source

      Yahoo Finance historical data

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         gafa_stock
