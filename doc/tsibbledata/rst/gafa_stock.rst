========== ===============
gafa_stock R Documentation
========== ===============

GAFA stock prices
-----------------

Description
~~~~~~~~~~~

Historical stock prices from 2014-2018 for Google, Amazon, Facebook and
Apple. All prices are in $USD.

Format
~~~~~~

Time series of class ``tsibble``

Details
~~~~~~~

``gafa_stock`` is a ``tsibble`` containing data on irregular trading
days:

========== =========================================
Open:      The opening price for the stock.
High:      The stock's highest trading price.
Low:       The stock's lowest trading price.
Close:     The closing price for the stock.
Adj_Close: The adjusted closing price for the stock.
Volume:    The amount of stock traded.
           
========== =========================================

Each stock is uniquely identified by one key:

======= ================================
Symbol: The ticker symbol for the stock.
        
======= ================================

Source
~~~~~~

Yahoo Finance historical data

Examples
~~~~~~~~

.. code:: R

   library(tsibble)
   gafa_stock
