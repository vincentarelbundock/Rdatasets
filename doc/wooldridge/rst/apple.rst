.. container::

   ===== ===============
   apple R Documentation
   ===== ===============

   .. rubric:: apple
      :name: apple

   .. rubric:: Description
      :name: description

   Wooldridge Source: These data were used in the doctoral dissertation
   of Jeffrey Blend, Department of Agricultural Economics, Michigan
   State University, 1998. The thesis was supervised by Professor Eileen
   van Ravensway. Drs. Blend and van Ravensway kindly provided the data,
   which were obtained from a telephone survey conducted by the
   Institute for Public Policy and Social Research at MSU. Data loads
   lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('apple')

   .. rubric:: Format
      :name: format

   A data.frame with 660 observations on 17 variables:

   -  **id:** respondent identifier

   -  **educ:** years schooling

   -  **date:** date: month/day/year

   -  **state:** home state

   -  **regprc:** price of regular apples

   -  **ecoprc:** price of ecolabeled apples

   -  **inseason:** =1 if interviewed in Nov.

   -  **hhsize:** household size

   -  **male:** =1 if male

   -  **faminc:** family income, thousands

   -  **age:** in years

   -  **reglbs:** quantity regular apples, pounds

   -  **ecolbs:** quantity ecolabeled apples, lbs

   -  **numlt5:** # in household younger than 5

   -  **num5_17:** # in household 5 to 17

   -  **num18_64:** # in household 18 to 64

   -  **numgt64:** # in household older than 64

   .. rubric:: Notes
      :name: notes

   This data set is close to a true experimental data set because the
   price pairs facing a family were randomly determined. In other words,
   the family head was presented with prices for the eco-labeled and
   regular apples, and then asked how much of each kind of apple the
   family would buy at the given prices. As predicted by basic
   economics, the own price effect is negative (and strong) and the
   cross price effect is positive (and strong). While the main dependent
   variable, ecolbs, piles up at zero, estimating a linear model is
   still worthwhile. Interestingly, because the survey design induces a
   strong positive correlation between the prices of eco-labeled and
   regular apples, there is an omitted variable problem if either of the
   price variables is dropped from the demand equation. A good exam
   question is to show a simple regression of ecolbs on ecoprc and then
   a multiple regression on both prices, and ask students to decide
   whether the price variables must be positively or negatively
   correlated.

   Used in Text: pages 201, 223, 266, 626-627

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(apple)
