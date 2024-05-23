.. container::

   .. container::

      ========= ===============
      Utilities R Documentation
      ========= ===============

      .. rubric:: Utility bills
         :name: utility-bills

      .. rubric:: Description
         :name: description

      Data from utility bills at a residence. ``Utilities2`` is a
      similar data set with some additional variables.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Utilities)

      .. rubric:: Format
         :name: format

      A data frame containing 117 observations for the following
      variables.

      ``month``
         month (coded as a number)

      ``day``
         day of month on which bill was calculated

      ``year``
         year of bill

      ``temp``
         average temperature (F) for billing period

      ``kwh``
         electricity usage (kwh)

      ``ccf``
         gas usage (ccf)

      ``thermsPerDay``
         a numeric vector

      ``billingDays``
         number of billing days in billing period

      ``totalbill``
         total bill (in dollars)

      ``gasbill``
         gas bill (in dollars)

      ``elecbill``
         electric bill (in dollars)

      ``notes``
         notes about the billing period

      .. rubric:: Source
         :name: source

      Daniel T. Kaplan, *Statistical modeling: A fresh approach*, 2009.

      .. rubric:: See Also
         :name: see-also

      ``Utilities2``.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Utilities)
         if (require(ggformula)) {
           gf_point(gasbill ~ temp, data = Utilities)
         }
