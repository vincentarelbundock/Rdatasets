.. container::

   .. container::

      === ===============
      Yen R Documentation
      === ===============

      .. rubric:: Yen-dollar Exchange Rate
         :name: yen-dollar-exchange-rate

      .. rubric:: Description
         :name: description

      weekly observations from 1975 to 1989

      *number of observations* : 778

      *observation* : country

      *country* : Japan

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Yen)

      .. rubric:: Format
         :name: format

      A dataframe containing :

      date
         the date of the observation (19850104 is January, 4, 1985)

      s
         the ask price of the dollar in units of Yen in the spot market
         on Friday of the current week

      f
         the ask price of the dollar in units of Yen in the 30-day
         forward market on Friday of the current week

      s30
         the bid price of the dollar in units of Yen in the spot market
         on the delivery date on a current forward contract

      .. rubric:: Source
         :name: source

      Bekaert, G. and R. Hodrick (1993) “On biases in the measurement of
      foreign exchange risk premiums”, *Journal of International Money
      and Finance*, **12**, 115-138.

      .. rubric:: References
         :name: references

      Hayashi, F. (2000) *Econometrics*, Princeton University Press,
      http://fhayashi.fc2web.com/hayashi_econometrics.htm, chapter 6,
      438-443.

      .. rubric:: See Also
         :name: see-also

      ``DM``, ``Pound``, ``Index.Source``, ``Index.Economics``,
      ``Index.Econometrics``, ``Index.Observations``,
      ``Index.Time.Series``
