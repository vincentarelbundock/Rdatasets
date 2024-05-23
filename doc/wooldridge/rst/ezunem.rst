.. container::

   .. container::

      ====== ===============
      ezunem R Documentation
      ====== ===============

      .. rubric:: ezunem
         :name: ezunem

      .. rubric:: Description
         :name: description

      Wooldridge Source: See EZANDERS.RAW Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('ezunem')

      .. rubric:: Format
         :name: format

      A data.frame with 198 observations on 37 variables:

      -  **year:** 1980 to 1988

      -  **uclms:** unemployment claims

      -  **ez:** =1 if have enterprise zone

      -  **d81:** =1 if year == 1981

      -  **d82:** =1 if year == 1982

      -  **d83:** =1 if year == 1983

      -  **d84:** =1 if year == 1984

      -  **d85:** =1 if year == 1985

      -  **d86:** =1 if year == 1986

      -  **d87:** =1 if year == 1987

      -  **d88:** =1 if year == 1988

      -  **c1:** =1 if city == 1

      -  **c2:** =1 if city == 2

      -  **c3:** =1 if city == 3

      -  **c4:**

      -  **c5:**

      -  **c6:**

      -  **c7:**

      -  **c8:**

      -  **c9:**

      -  **c10:**

      -  **c11:**

      -  **c12:**

      -  **c13:**

      -  **c14:**

      -  **c15:**

      -  **c16:**

      -  **c17:**

      -  **c18:**

      -  **c19:**

      -  **c20:**

      -  **c21:**

      -  **c22:** =1 if city == 22

      -  **luclms:** log(uclms)

      -  **guclms:** luclms - luclms[\_n-1]

      -  **cez:** ez - ez[\_n-1]

      -  **city:** city identifier, 1 through 22

      .. rubric:: Notes
         :name: notes

      A very good project is to have students analyze enterprise,
      empowerment, or renaissance zone policies in their home states.
      Many states now have such programs. A few years of panel data
      straddling periods of zone designation, at the city or zip code
      level, could make a nice study.

      Used in Text: pages 470, 504

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(ezunem)
