.. container::

   .. container::

      ====== ===============
      infmrt R Documentation
      ====== ===============

      .. rubric:: infmrt
         :name: infmrt

      .. rubric:: Description
         :name: description

      Wooldridge Source: Statistical Abstract of the United States, 1990
      and 1994. (For example, the infant mortality rates come from Table
      113 in 1990 and Table 123 in 1994.) Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('infmrt')

      .. rubric:: Format
         :name: format

      A data.frame with 102 observations on 12 variables:

      -  **year:** 1987 or 1990

      -  **infmort:** deaths per 1,000 live births

      -  **afdcprt:** afdc partic., 1000s

      -  **popul:** population, 1000s

      -  **pcinc:** per capita income

      -  **physic:** drs. per 100,000 civilian pop.

      -  **afdcper:** percent on AFDC

      -  **d90:** =1 if year == 1990

      -  **lpcinc:** log(pcinc)

      -  **lphysic:** log(physic)

      -  **DC:** =1 for Washington DC

      -  **lpopul:** log(popul)

      .. rubric:: Notes
         :name: notes

      An interesting exercise is to add the percentage of the population
      on AFDC (afdcper) to the infant mortality equation. Pooled OLS and
      first differencing can give very different estimates. Adding the
      years 1998 and 2002 and applying fixed effects seems natural.
      Intervening years can be added, too, although variation in the key
      variables from year to year might be minimal.

      Used in Text: pages 330-331, 339

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(infmrt)
