.. container::

   ======= ===============
   exibble R Documentation
   ======= ===============

   .. rubric:: A toy example tibble for testing with gt: exibble
      :name: a-toy-example-tibble-for-testing-with-gt-exibble

   .. rubric:: Description
      :name: description

   This tibble contains data of a few different classes, which makes it
   well-suited for quick experimentation with the functions in this
   package. It contains only eight rows with numeric, character, and
   factor columns. The last 4 rows contain ``NA`` values in the majority
   of this tibble's columns (1 missing value per column). The ``date``,
   ``time``, and ``datetime`` columns are character-based dates/times in
   the familiar ISO 8601 format. The ``row`` and ``group`` columns
   provide for unique rownames and two groups (``grp_a`` and ``grp_b``)
   for experimenting with the ``gt()`` function's ``rowname_col`` and
   ``groupname_col`` arguments.

   .. rubric:: Usage
      :name: usage

   ::

      exibble

   .. rubric:: Format
      :name: format

   A tibble with 8 rows and 9 variables:

   num
      a numeric column ordered with increasingly larger values

   char
      a character column composed of names of fruits from ``a`` to ``h``

   fctr
      a factor column with numbers from 1 to 8, written out

   date, time, datetime
      character columns with dates, times, and datetimes

   currency
      a numeric column that is useful for testing currency-based
      formatting

   row
      a character column in the format ``row_X`` which can be useful for
      testing with row captions in a table stub

   group
      a character column with four ``grp_a`` values and four ``grp_b``
      values which can be useful for testing tables that contain row
      groups

   .. rubric:: Function ID
      :name: function-id

   11-6

   .. rubric:: See Also
      :name: see-also

   Other Datasets: ``countrypops``, ``gtcars``, ``pizzaplace``,
   ``sp500``, ``sza``

   .. rubric:: Examples
      :name: examples

   ::

      # Here is a glimpse at the data
      # available in `exibble`
      dplyr::glimpse(exibble)

