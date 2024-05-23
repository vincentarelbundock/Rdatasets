.. container::

   .. container::

      ========= ===============
      Birthdays R Documentation
      ========= ===============

      .. rubric:: US Births in 1969 - 1988
         :name: us-births-in-1969---1988

      .. rubric:: Description
         :name: description

      A day by day record of the number of births in each US State.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Birthdays)

      .. rubric:: Format
         :name: format

      A data frame with 374221 observations on the following variables.

      ``state``
         state where child was born

      ``year``
         year (1969-1988)

      ``month``
         month (1-12)

      ``day``
         day of month

      ``date``
         date as a date object

      ``wday``
         Day of week (ordered factor)

      ``births``
         number of births

      .. rubric:: See Also
         :name: see-also

      ``Births``, ``Births78``, ``Births2015``, ``BirthsSSA``,
      ``BirthsCDC`` for data sets that are aggregated at the level of
      the entire country.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Birthdays)
         if (require(mosaic)) {
           MI <- Birthdays |> filter(state == "MI")
           gf_point(births ~ date, Birthdays, data = MI)
           gf_line(births ~ date, Birthdays, data = MI, color = ~ wday)
           gf_line(births ~ date,
             data = Birthdays |> group_by(date) |> summarise(births = sum(births)))
           }
