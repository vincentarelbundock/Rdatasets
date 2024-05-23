.. container::

   .. container::

      ============= ===============
      countymurders R Documentation
      ============= ===============

      .. rubric:: countymurders
         :name: countymurders

      .. rubric:: Description
         :name: description

      Wooldridge Source: Compiled by J. Monroe Gamble for a Summer
      Research Opportunities Program (SROP) at Michigan State
      University, Summer 2014. Monroe obtained data from the U.S. Census
      Bureau, the FBI Uniform Crime Reports, and the Death Penalty
      Information Center. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('countymurders')

      .. rubric:: Format
         :name: format

      A data.frame with 37349 observations on 20 variables:

      -  **arrests:** # of murder arrests

      -  **countyid:** county identifier: 1000*statefips + countyfips

      -  **density:** population density; per square mile

      -  **popul:** county population

      -  **perc1019:** percent pop. age 10-19

      -  **perc2029:** percent pop. age 20-29

      -  **percblack:** percent population black

      -  **percmale:** percent population male

      -  **rpcincmaint:** real per capita income maintenance

      -  **rpcpersinc:** real per capita personal income

      -  **rpcunemins:** real per capita unem insurance payments

      -  **year:** 1980-1996

      -  **murders:** # of murders

      -  **murdrate:** murders per 10,000 people

      -  **arrestrate:** murder arrests per 10,000

      -  **statefips:** state FIPS code

      -  **countyfips:** county FIPS code

      -  **execs:** # of executions

      -  **lpopul:** log(popul)

      -  **execrate:** executions per 10,000

      .. rubric:: Used in Text
         :name: used-in-text

      pages 16, 58, 431, 457

      .. rubric:: Source
         :name: source

      http://www.cengage.com/c/introductory-econometrics-a-modern-approach-6e-wooldridge

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(countymurders)
