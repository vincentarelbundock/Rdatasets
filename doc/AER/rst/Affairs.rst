.. container::

   .. container::

      ======= ===============
      Affairs R Documentation
      ======= ===============

      .. rubric:: Fair's Extramarital Affairs Data
         :name: fairs-extramarital-affairs-data

      .. rubric:: Description
         :name: description

      Infidelity data, known as Fair's Affairs. Cross-section data from
      a survey conducted by Psychology Today in 1969.

      .. rubric:: Usage
         :name: usage

      ::

         data("Affairs")

      .. rubric:: Format
         :name: format

      A data frame containing 601 observations on 9 variables.

      affairs
         numeric. How often engaged in extramarital sexual intercourse
         during the past year? ``0`` = none, ``1`` = once, ``2`` =
         twice, ``3`` = 3 times, ``7`` = 4–10 times, ``12`` = monthly,
         ``12`` = weekly, ``12`` = daily.

      gender
         factor indicating gender.

      age
         numeric variable coding age in years: ``17.5`` = under 20,
         ``22`` = 20–24, ``27`` = 25–29, ``32`` = 30–34, ``37`` = 35–39,
         ``42`` = 40–44, ``47`` = 45–49, ``52`` = 50–54, ``57`` = 55 or
         over.

      yearsmarried
         numeric variable coding number of years married: ``0.125`` = 3
         months or less, ``0.417`` = 4–6 months, ``0.75`` = 6 months–1
         year, ``1.5`` = 1–2 years, ``4`` = 3–5 years, ``7`` = 6–8
         years, ``10`` = 9–11 years, ``15`` = 12 or more years.

      children
         factor. Are there children in the marriage?

      religiousness
         numeric variable coding religiousness: ``1`` = anti, ``2`` =
         not at all, ``3`` = slightly, ``4`` = somewhat, ``5`` = very.

      education
         numeric variable coding level of education: ``9`` = grade
         school, ``12`` = high school graduate, ``14`` = some college,
         ``16`` = college graduate, ``17`` = some graduate work, ``18``
         = master's degree, ``20`` = Ph.D., M.D., or other advanced
         degree.

      occupation
         numeric variable coding occupation according to Hollingshead
         classification (reverse numbering).

      rating
         numeric variable coding self rating of marriage: ``1`` = very
         unhappy, ``2`` = somewhat unhappy, ``3`` = average, ``4`` =
         happier than average, ``5`` = very happy.

      .. rubric:: Source
         :name: source

      Online complements to Greene (2003). Table F22.2.

      https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

      .. rubric:: References
         :name: references

      Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
      Saddle River, NJ: Prentice Hall.

      Fair, R.C. (1978). A Theory of Extramarital Affairs. *Journal of
      Political Economy*, **86**, 45–61.

      .. rubric:: See Also
         :name: see-also

      ``Greene2003``

      .. rubric:: Examples
         :name: examples

      ::

         data("Affairs")

         ## Greene (2003)
         ## Tab. 22.3 and 22.4
         fm_ols <- lm(affairs ~ age + yearsmarried + religiousness + occupation + rating,
           data = Affairs)
         fm_probit <- glm(I(affairs > 0) ~ age + yearsmarried + religiousness + occupation + rating,
           data = Affairs, family = binomial(link = "probit"))

         fm_tobit <- tobit(affairs ~ age + yearsmarried + religiousness + occupation + rating,
           data = Affairs)
         fm_tobit2 <- tobit(affairs ~ age + yearsmarried + religiousness + occupation + rating,
           right = 4, data = Affairs)

         fm_pois <- glm(affairs ~ age + yearsmarried + religiousness + occupation + rating,
           data = Affairs, family = poisson)

         library("MASS")
         fm_nb <- glm.nb(affairs ~ age + yearsmarried + religiousness + occupation + rating,
           data = Affairs)

         ## Tab. 22.6
         library("pscl")
         fm_zip <- zeroinfl(affairs ~ age + yearsmarried + religiousness + occupation + rating | age + 
           yearsmarried + religiousness + occupation + rating, data = Affairs)
