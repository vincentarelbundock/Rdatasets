.. container::

   ===== ===============
   Garch R Documentation
   ===== ===============

   .. rubric:: Daily Observations on Exchange Rates of the US Dollar
      Against Other Currencies
      :name: Garch

   .. rubric:: Description
      :name: description

   daily observations from 1980–01 to 1987–05–21

   *number of observations* : 1867

   *observation* : country

   *country* : World

   .. rubric:: Usage
      :name: usage

   ::

      data(Garch)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   ``date``
      date of observation (``yymmdd``)

   ``day``
      day of the week (a factor)

   ``dm``
      exchange rate Dollar/Deutsch Mark

   ``ddm``
      ``dm-dm(-1)``

   ``bp``
      exchange rate of Dollar/British Pound

   ``cd``
      exchange rate of Dollar/Canadian Dollar

   ``dy``
      exchange rate of Dollar/Yen

   ``sf``
      exchange rate of Dollar/Swiss Franc

   .. rubric:: References
      :name: references

   Verbeek, Marno (2004) *A Guide to Modern Econometrics*, John Wiley
   and Sons, chapter 8.

   .. rubric:: See Also
      :name: see-also

   ``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
   ``Index.Observations``,

   ``Index.Time.Series``
