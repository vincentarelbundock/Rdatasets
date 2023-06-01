.. container::

   ====== ===============
   wtloss R Documentation
   ====== ===============

   .. rubric:: Weight Loss Data from an Obese Patient
      :name: wtloss

   .. rubric:: Description
      :name: description

   The data frame gives the weight, in kilograms, of an obese patient at
   52 time points over an 8 month period of a weight rehabilitation
   programme.

   .. rubric:: Usage
      :name: usage

   ::

      wtloss

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   ``Days``
      time in days since the start of the programme.

   ``Weight``
      weight in kilograms of the patient.

   .. rubric:: Source
      :name: source

   Dr T. Davies, Adelaide.

   .. rubric:: References
      :name: references

   Venables, W. N. and Ripley, B. D. (2002) *Modern Applied Statistics
   with S.* Fourth edition. Springer.

   .. rubric:: Examples
      :name: examples

   ::

      ## IGNORE_RDIFF_BEGIN
      wtloss.fm <- nls(Weight ~ b0 + b1*2^(-Days/th),
          data = wtloss, start = list(b0=90, b1=95, th=120))
      wtloss.fm
      ## IGNORE_RDIFF_END
      plot(wtloss)
      with(wtloss, lines(Days, fitted(wtloss.fm)))
