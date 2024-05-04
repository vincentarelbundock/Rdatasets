.. container::

   .. container::

      ================= ===============
      divorce_margarine R Documentation
      ================= ===============

      .. rubric:: Divorce rate and margarine consumption data
         :name: divorce-rate-and-margarine-consumption-data

      .. rubric:: Description
         :name: description

      Divorce rates in Maine and per capita consumption of margarine in
      US data

      .. rubric:: Usage
         :name: usage

      ::

         divorce_margarine

      .. rubric:: Format
         :name: format

      An object of class ``"data.frame"``.

      .. rubric:: Details
         :name: details

      -  divorce_rate_maine. Divorce per 1000 in Maine.

      -  margarine_consumption_per_capita. US per capita consumption of
         margarine in pounds.

      -  year. Year.

      .. rubric:: Source
         :name: source

      `Spurious
      Correlations <https://www.tylervigen.com/spurious-correlations>`__

      .. rubric:: Examples
         :name: examples

      ::

         with(divorce_margarine, plot(margarine_consumption_per_capita, divorce_rate_maine))
