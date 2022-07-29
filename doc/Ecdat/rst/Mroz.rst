.. container::

   ==== ===============
   Mroz R Documentation
   ==== ===============

   .. rubric:: Labor Supply Data
      :name: labor-supply-data

   .. rubric:: Description
      :name: description

   a cross-section

   *number of observations* : 753

   *observation* : individuals

   *country* : United States

   .. rubric:: Usage
      :name: usage

   ::

      data(Mroz)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   work
      work at home in 1975? (Same ``carData::Mroz[['lfp']]`` = labor
      force participation.)

   hoursw
      wife's hours of work in 1975

   child6
      number of children less than 6 years old in household (Same as
      ``carData::Mroz['k5']``.)

   child618
      number of children between ages 6 and 18 in household (Same as
      ``carData::Mroz['k618']``)

   agew
      wife's age

   educw
      wife's educational attainment, in years

   hearnw
      wife's average hourly earnings, in 1975 dollars

   wagew
      wife's wage reported at the time of the 1976 interview (not= 1975
      estimated wage)

   hoursh
      husband's hours worked in 1975

   ageh
      husband's age

   educh
      husband's educational attainment, in years

   wageh
      husband's wage, in 1975 dollars

   income
      family income, in 1975 dollars

   educwm
      wife's mother's educational attainment, in years

   educwf
      wife's father's educational attainment, in years

   unemprate
      unemployment rate in county of residence, in percentage points

   city
      lives in large city (SMSA) ?

   experience
      actual years of wife's previous labor market experience

   .. rubric:: Details
      :name: details

   These data seem to have come from the same source as
   ``carData::Mroz``, though each data set has variables not in the
   other. The variables that are shared have different names.

   On 2019-11-04 Bruno Rodrigues explained that ``Ecdat::Mroz['work']``
   had the two labels incorrectly swapped, and
   ``wooldridge::mroz['inlf']`` was correct; ``wooldridge`` matches
   ``carData::Mroz['lfp']``.

   .. rubric:: Source
      :name: source

   Mroz, T. (1987) “The sensitivity of an empirical model of married
   women's hours of work to economic and statistical assumptions”,
   *Econometrica*, **55**, 765-799.

   1976 Panel Study of Income Dynamics.

   .. rubric:: References
      :name: references

   Greene, W.H. (2003) *Econometric Analysis*, Prentice Hall,
   https://archive.org/details/econometricanaly0000gree_f4x3, Table
   F4.1.

   .. rubric:: See Also
      :name: see-also

   ``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
   ``Index.Observations``, ``Mroz`` ``mroz``

   .. rubric:: Examples
      :name: examples

   ::

      head(Mroz)

      #If 'car' and / or 'carData' is also in the path, 
      # then use the following to be clear that 
      # you want this version: 
      head(Ecdat::Mroz)
