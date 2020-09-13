============== ===============
Municipalities R Documentation
============== ===============

Municipal Expenditure Data
--------------------------

Description
~~~~~~~~~~~

Panel data set for 265 Swedish municipalities covering 9 years
(1979-1987).

Usage
~~~~~

::

   data("Municipalities")

Format
~~~~~~

A data frame containing 2,385 observations on 5 variables.

municipality
   factor with ID number for municipality.

year
   factor coding year.

expenditures
   total expenditures.

revenues
   total own-source revenues.

grants
   intergovernmental grants received by the municipality.

Details
~~~~~~~

Total expenditures contains both capital and current expenditures.

Expenditures, revenues, and grants are expressed in million SEK. The
series are deflated and in per capita form. The implicit deflator is a
municipality-specific price index obtained by dividing total local
consumption expenditures at current prices by total local consumption
expenditures at fixed (1985) prices.

The data are gathered by Statistics Sweden and obtained from Financial
Accounts for the Municipalities (Kommunernas Finanser).

Source
~~~~~~

Journal of Applied Econometrics Data Archive.

http://qed.econ.queensu.ca/jae/2000-v15.4/dahlberg-johansson/

References
~~~~~~~~~~

Dahlberg, M., and Johansson, E. (2000). An Examination of the Dynamic
Behavior of Local Governments Using GMM Bootstrapping Methods. *Journal
of Applied Econometrics*, **15**, 401–416.

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

See Also
~~~~~~~~

``Greene2003``

Examples
~~~~~~~~

::

   ## Greene (2003), Table 18.2
   data("Municipalities")
   summary(Municipalities)
