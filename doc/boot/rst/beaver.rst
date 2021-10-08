.. container::

   ====== ===============
   beaver R Documentation
   ====== ===============

   .. rubric:: Beaver Body Temperature Data
      :name: beaver-body-temperature-data

   .. rubric:: Description
      :name: description

   The ``beaver`` data frame has 100 rows and 4 columns. It is a
   multivariate time series of class ``"ts"`` and also inherits from
   class ``"data.frame"``.

   This data set is part of a long study into body temperature
   regulation in beavers. Four adult female beavers were live-trapped
   and had a temperature-sensitive radio transmitter surgically
   implanted. Readings were taken every 10 minutes. The location of the
   beaver was also recorded and her activity level was dichotomized by
   whether she was in the retreat or outside of it since high-intensity
   activities only occur outside of the retreat.

   The data in this data frame are those readings for one of the beavers
   on a day in autumn.

   .. rubric:: Usage
      :name: usage

   ::

      beaver

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   ``day``
      The day number. The data includes only data from day 307 and early
      308.

   ``time``
      The time of day formatted as hour-minute.

   ``temp``
      The body temperature in degrees Celsius.

   ``activ``
      The dichotomized activity indicator. ``1`` indicates that the
      beaver is outside of the retreat and therefore engaged in
      high-intensity activity.

   .. rubric:: Source
      :name: source

   The data were obtained from

   Reynolds, P.S. (1994) Time-series analyses of beaver body
   temperatures. In *Case Studies in Biometry*. N. Lange, L. Ryan, L.
   Billard, D. Brillinger, L. Conquest and J. Greenhouse (editors),
   211–228. John Wiley.

   .. rubric:: References
      :name: references

   Davison, A.C. and Hinkley, D.V. (1997) *Bootstrap Methods and Their
   Application*. Cambridge University Press.
