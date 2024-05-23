.. container::

   .. container::

      ======= ===============
      exibble R Documentation
      ======= ===============

      .. rubric:: A toy example tibble for testing with gt: exibble
         :name: a-toy-example-tibble-for-testing-with-gt-exibble

      .. rubric:: Description
         :name: description

      This tibble contains data of a few different classes, which makes
      it well-suited for quick experimentation with the functions in
      this package. It contains only eight rows with numeric, character,
      and factor columns. The last 4 rows contain ``NA`` values in the
      majority of this tibble's columns (1 missing value per column).
      The ``date``, ``time``, and ``datetime`` columns are
      character-based dates/times in the familiar ISO 8601 format. The
      ``row`` and ``group`` columns provide for unique rownames and two
      groups (``grp_a`` and ``grp_b``) for experimenting with the
      ``gt()`` function's ``rowname_col`` and ``groupname_col``
      arguments.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         exibble

      .. rubric:: Format
         :name: format

      A tibble with 8 rows and 9 variables:

      num
         A numeric column ordered with increasingly larger values.

      char
         A character column composed of names of fruits from ``a`` to
         ``h``.

      fctr
         A factor column with numbers from ``1`` to ``8``, written out.

      date, time, datetime
         Character columns with dates, times, and datetimes.

      currency
         A numeric column that is useful for testing currency-based
         formatting.

      row
         A character column in the format ``row_X`` which can be useful
         for testing with row labels in a table stub.

      group
         A character column with four ``grp_a`` values and four
         ``grp_b`` values which can be useful for testing tables that
         contain row groups.

      .. rubric:: Examples
         :name: examples

      Here is the entirety of the ``exibble`` table.

      .. container:: sourceCode r

         ::

            exibble
            #> # A tibble: 8 x 9
            #>           num char       fctr  date       time  datetime    currency row   group
            #>         <dbl> <chr>      <fct> <chr>      <chr> <chr>          <dbl> <chr> <chr>
            #> 1       0.111 apricot    one   2015-01-15 13:35 2018-01-01~    50.0  row_1 grp_a
            #> 2       2.22  banana     two   2015-02-15 14:40 2018-02-02~    18.0  row_2 grp_a
            #> 3      33.3   coconut    three 2015-03-15 15:45 2018-03-03~     1.39 row_3 grp_a
            #> 4     444.    durian     four  2015-04-15 16:50 2018-04-04~ 65100    row_4 grp_a
            #> 5    5550     <NA>       five  2015-05-15 17:55 2018-05-05~  1326.   row_5 grp_b
            #> 6      NA     fig        six   2015-06-15 <NA>  2018-06-06~    13.3  row_6 grp_b
            #> 7  777000     grapefruit seven <NA>       19:10 2018-07-07~    NA    row_7 grp_b
            #> 8 8880000     honeydew   eight 2015-08-15 20:20 <NA>            0.44 row_8 grp_b

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-6

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.2.0.5`` (March 31, 2020)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``gtcars``,
      ``illness``, ``metro``, ``pizzaplace``, ``rx_addv``, ``rx_adsl``,
      ``sp500``, ``sza``, ``towny``

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_exibble.png
