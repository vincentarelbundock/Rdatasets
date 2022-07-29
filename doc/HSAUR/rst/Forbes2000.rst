.. container::

   ========== ===============
   Forbes2000 R Documentation
   ========== ===============

   .. rubric:: The Forbes 2000 Ranking of the World's Biggest Companies
      (Year 2004)
      :name: the-forbes-2000-ranking-of-the-worlds-biggest-companies-year-2004

   .. rubric:: Description
      :name: description

   The Forbes 2000 list is a ranking of the world's biggest companies,
   measured by sales, profits, assets and market value.

   .. rubric:: Usage
      :name: usage

   ::

      data("Forbes2000")

   .. rubric:: Format
      :name: format

   A data frame with 2000 observations on the following 8 variables.

   rank
      the ranking of the company.

   name
      the name of the company.

   country
      a factor giving the country the company is situated in.

   category
      a factor describing the products the company produces.

   sales
      the amount of sales of the company in billion USD.

   profits
      the profit of the company in billion USD.

   assets
      the assets of the company in billion USD.

   marketvalue
      the market value of the company in billion USD.

   .. rubric:: Source
      :name: source

   https://www.forbes.com, assessed on November 26th, 2004.

   .. rubric:: Examples
      :name: examples

   ::

      data("Forbes2000", package = "HSAUR")
      summary(Forbes2000)
      ### number of countries
      length(levels(Forbes2000$country))
      ### number of industries
      length(levels(Forbes2000$category))
