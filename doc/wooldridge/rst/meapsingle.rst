.. container::

   .. container::

      ========== ===============
      meapsingle R Documentation
      ========== ===============

      .. rubric:: meapsingle
         :name: meapsingle

      .. rubric:: Description
         :name: description

      Wooldridge Source: Collected by Professor Leslie Papke, an
      economics professor at MSU, from the Michigan Department of
      Education web site, www.michigan.gov/mde, and the U.S. Census
      Bureau. Professor Papke kindly provided the data. Data loads
      lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('meapsingle')

      .. rubric:: Format
         :name: format

      A data.frame with 229 observations on 18 variables:

      -  **dcode:** district code

      -  **bcode:** building code

      -  **math4:** percent satisfactory, 4th grade math

      -  **read4:** percent satisfactory, 4th grade reading

      -  **enroll:** school enrollment

      -  **exppp:** expenditures per pupil, $

      -  **free:** percent eligible, free lunch

      -  **reduced:** percent eligible, reduced lunch

      -  **lunch:** free + reduced

      -  **medinc:** zipcode median family, $ (1999)

      -  **totchild:** # of children (in zipcode)

      -  **married:** # of children in married-couple families

      -  **single:** # of children not in married-couple families

      -  **pctsgle:** percent of children not in married-couple families

      -  **zipcode:** school zipcode

      -  **lenroll:** log(enroll)

      -  **lexppp:** log(exppp)

      -  **lmedinc:** log(medinc)

      .. rubric:: Used in Text
         :name: used-in-text

      100, 145-146, 198

      .. rubric:: Source
         :name: source

      http://www.cengage.com/c/introductory-econometrics-a-modern-approach-6e-wooldridge

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(meapsingle)
