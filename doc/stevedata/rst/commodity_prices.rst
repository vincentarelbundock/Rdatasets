.. container::

   .. container::

      ================ ===============
      commodity_prices R Documentation
      ================ ===============

      .. rubric:: Select World Bank Commodity Price Data (Monthly)
         :name: select-world-bank-commodity-price-data-monthly

      .. rubric:: Description
         :name: description

      A data set on select, monthly commodity prices made available by
      the World Bank in its so-called "pink sheet." These data are
      potentially useful for applications on data gathering, inflation
      adjustments, indexing, cointegration, general economic riff-raff,
      and more.

      .. rubric:: Usage
         :name: usage

      ::

         commodity_prices

      .. rubric:: Format
         :name: format

      A data frame with the following 11 variables.

      ``date``
         a date

      ``oil_brent``
         crude oil, UK Brent 38 API ($/bbl)

      ``oil_dubai``
         crude oil, Dubai Fateh 32 API for years 1985-present; 1960-84
         refer to Saudi Arabian Light, 34 API ($/bbl).

      ``coffee_arabica``
         coffee (ICO), International Coffee Organization indicator
         price, other mild Arabicas, average New York and Bremen/Hamburg
         markets, ex-dock ($/kg)

      ``coffee_robustas``
         coffee (ICO), International Coffee Organization indicator
         price, Robustas, average New York and Le Havre/Marseilles
         markets, ex-dock ($/kg)

      ``tea_columbo``
         tea (Colombo auctions), Sri Lankan origin, all tea, arithmetic
         average of weekly quotes ($/kg).

      ``tea_kolkata``
         tea (Kolkata auctions), leaf, include excise duty, arithmetic
         average of weekly quotes ($/kg).

      ``tea_mombasa``
         tea (Mombasa/Nairobi auctions), African origin, all tea,
         arithmetic average of weekly quotes ($/kg).

      ``sugar_eu``
         sugar (EU), European Union negotiated import price for raw
         unpackaged sugar from African, Caribbean and Pacific (ACP)
         under Lome Conventions, c.I.f. European ports ($/kg)

      ``sugar_us``
         sugar (United States), nearby futures contract, c.i.f. ($/kg)

      ``sugar_world``
         sugar (World), International Sugar Agreement (ISA) daily price,
         raw, f.o.b. and stowed at greater Caribbean ports ($/kg).

      .. rubric:: Details
         :name: details

      All data are in nominal USD. Adjust (to taste) accordingly.

      Data compiled by the World Bank for its historical data on
      commodity prices. The oil price data come from a combination of
      sources, supposedly Bloomberg, Energy Intelligence Group (EIG),
      Organization of Petroleum Exporting Countries (OPEC), and the
      World Bank. Data on coffee prices come from Bloomberg, Complete
      Coffee Coverage, the International Coffee Organization, Thomson
      Reuters Datastream, and the World Bank. Data on tea prices for
      Colombo auctions come the from International Tea Committee, Tea
      Broker's Association of London, Tea Exporters Association Sri
      Lanka, and the World Bank. Data on tea prices for Kolkata auctions
      come from the International Tea Committee, Tea Board India, Tea
      Broker's Association of London, and the World Bank. Tea prices for
      Mombasa/Nairobi auctions come from African Tea Brokers Limited,
      International Tea Committee, Tea Broker's Association of London,
      and the World Bank. EU sugar price data come from International
      Monetary Fund, World Bank. Sugar price data for the United States
      come from Bloomberg and World Bank. Global sugar price data come
      from Bloomberg, International Sugar Organization, Thomson Reuters
      Datastream, and the World Bank.

      This data set effectively deprecates the ``sugar_price`` and
      ``coffee_price`` data sets in this package. Both may be removed at
      a later point.
