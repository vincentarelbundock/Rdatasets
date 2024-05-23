.. container::

   .. container::

      ======== ===============
      abortion R Documentation
      ======== ===============

      .. rubric:: Data on abortion legalization and sexually transmitted
         infections
         :name: data-on-abortion-legalization-and-sexually-transmitted-infections

      .. rubric:: Description
         :name: description

      This data looks at the effect of abortion legalization on the
      incidence of gonnorhea among 15-19 year olds, as a measure of
      risky behavior. Treatment is whether abortion is legalized at the
      time that the eventual 15-19 year olds are born.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         abortion

      .. rubric:: Format
         :name: format

      A data frame with 19584 rows and 22 variables

      fip
         State FIPS code

      age
         Age in years

      race
         Race - 1 = white, 2 = black

      year
         Year

      t
         Year but counted on a different scale

      sex
         Sex: 1 = male, 2 = female

      totpop
         Total population

      ir
         Incarcerated Males per 100,000

      crack
         Crack index

      alcohol
         Alcohol consumption per capita

      income
         Real income per capita

      ur
         State unemployment rate

      poverty
         Poverty rate

      repeal
         In a state with an early repeal of abortion prohibition

      acc
         AIDS mortality per 100,000 cumulative in t, t-1, t-2, t-3

      wht
         White Indicator

      male
         Male Indicator

      lnr
         Logged gonnorhea cases per 100,000 in 15-19 year olds

      younger
         From the younger group

      fa
         State-younger interaction

      pi
         Parental involvement law in effect

      bf15
         Is a black female in the 15-19 age group

      .. rubric:: Details
         :name: details

      This data is used in the *Difference-in-Differences* chapter of
      *Causal Inference: The Mixtape* by Cunningham.

      .. rubric:: Source
         :name: source

      Cunningham, Scott, and Christopher Cornwell. 2013. “The Long-Run
      Effect of Abortion on Sexually Transmitted Infections.” American
      Law and Economics Review 15 (1): 381–407.

      .. rubric:: References
         :name: references

      Cunningham. 2021. Causal Inference: The Mixtape. Yale Press.
      https://mixtape.scunning.com/index.html.
