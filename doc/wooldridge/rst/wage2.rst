.. container::

   ===== ===============
   wage2 R Documentation
   ===== ===============

   .. rubric:: wage2
      :name: wage2

   .. rubric:: Description
      :name: description

   Wooldridge Source: M. Blackburn and D. Neumark (1992), “Unobserved
   Ability, Efficiency Wages, and Interindustry Wage Differentials,”
   Quarterly Journal of Economics 107, 1421-1436. Professor Neumark
   kindly provided the data, of which I used just the data for 1980.
   Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('wage2')

   .. rubric:: Format
      :name: format

   A data.frame with 935 observations on 17 variables:

   -  **wage:** monthly earnings

   -  **hours:** average weekly hours

   -  **IQ:** IQ score

   -  **KWW:** knowledge of world work score

   -  **educ:** years of education

   -  **exper:** years of work experience

   -  **tenure:** years with current employer

   -  **age:** age in years

   -  **married:** =1 if married

   -  **black:** =1 if black

   -  **south:** =1 if live in south

   -  **urban:** =1 if live in SMSA

   -  **sibs:** number of siblings

   -  **brthord:** birth order

   -  **meduc:** mother's education

   -  **feduc:** father's education

   -  **lwage:** natural log of wage

   .. rubric:: Notes
      :name: notes

   As with WAGE1.RAW, there are some clear inconsistencies among the
   variables tenure, exper, and age. I have not been able to track down
   the causes, and so any changes would be effectively arbitrary.
   Instead, I am using the data as provided by the authors of the above
   QJE article.

   Used in Text: pages 64, 106, 111, 165, 218-219, 220-221, 262,
   310-312, 338, 519-520, 534, 546-547, 549, 678

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(wage2)
