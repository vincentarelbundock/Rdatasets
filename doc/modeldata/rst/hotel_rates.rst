.. container::

   =========== ===============
   hotel_rates R Documentation
   =========== ===============

   .. rubric:: Daily Hotel Rate Data
      :name: hotel_rates

   .. rubric:: Description
      :name: description

   A data set to predict the average daily rate for a hotel in Lisbon
   Portugal.

   .. rubric:: Details
      :name: details

   Data are originally described in Antonio, de Almeida, and Nunes
   (2019). This version of the data is filtered for one hotel (the
   "Resort Hotel") and is intended as regression data set for predicting
   the average daily rate for a room. The data are post-2016; the 2016
   data were used to have a predictor for the historical daily rates.
   See the ``hotel_rates.R`` file in the ``data-raw`` directory of the
   package to understand other filters used when creating this version
   of the data.

   The ``agent`` and ``company`` fields were changed from random
   characters to use a set of random names.

   The outcome column is ``avg_price_per_room``.

   .. rubric:: License
      :name: license

   No license was given for the data; See the reference below for
   source.

   .. rubric:: Source
      :name: source

   https://github.com/rfordatascience/tidytuesday/tree/master/data/2020/2020-02-11

   .. rubric:: References
      :name: references

   Antonio, N., de Almeida, A., and Nunes, L. (2019). Hotel booking
   demand datasets. *Data in Brief*, 22, 41-49.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      ## Not run: 
      str(hotel_rates)

      ## End(Not run)
