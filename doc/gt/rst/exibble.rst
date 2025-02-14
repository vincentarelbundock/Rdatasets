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

      Other datasets: ``constants``, ``countrypops``, ``films``,
      ``gibraltar``, ``gtcars``, ``illness``, ``metro``, ``nuclides``,
      ``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         exibble

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_exibble.png
