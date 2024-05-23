.. container::

   .. container::

      ========== ===============
      census2000 R Documentation
      ========== ===============

      .. rubric:: census2000
         :name: census2000

      .. rubric:: Description
         :name: description

      Wooldridge Source: Obtained from the United States Census Bureau
      by Professor Alberto Abadie of the Harvard Kennedy School of
      Government. Professor Abadie kindly provided the data. Data loads
      lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('census2000')

      .. rubric:: Format
         :name: format

      A data.frame with 29501 observations on 6 variables:

      -  **state:** State (ICPSR code)

      -  **puma:** Public Use Microdata Area

      -  **educ:** educational attainment

      -  **lweekinc:** log(weekly income)

      -  **exper:** years workforce experience

      -  **expersq:** exper^2

      .. rubric:: Used in Text
         :name: used-in-text

      pages 452-453

      .. rubric:: Source
         :name: source

      http://www.cengage.com/c/introductory-econometrics-a-modern-approach-6e-wooldridge

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(census2000)
