.. container::

   ============= ===============
   ChanningHouse R Documentation
   ============= ===============

   .. rubric:: Channing House Data
      :name: ChanningHouse

   .. rubric:: Description
      :name: description

   The ``ChanningHouse`` data frame has 457 rows and 5 columns. This is
   5 fewer than the parent channing data frame in the boot package.
   These 5 were removed because the exit time was not smaller than the
   entry time.

   Channing House is a retirement centre in Palo Alto, California. These
   data were collected between the opening of the house in 1964 until
   July 1, 1975. In that time 97 men and 365 women passed through the
   centre. For each of these, their age on entry and also on leaving or
   death was recorded. A large number of the observations were censored
   mainly due to the resident being alive on July 1, 1975 when the data
   was collected. Over the time of the study 130 women and 46 men died
   at Channing House. Differences between the survival of the sexes,
   taking age into account, was one of the primary concerns of this
   study.

   .. rubric:: Usage
      :name: usage

   ::

      data("ChanningHouse")

   .. rubric:: Format
      :name: format

   A data frame with 457 observations on the following 5 variables.

   ``sex``
      a factor for the sex of each resident with levels ``Female``
      ``Male``

   ``entry``
      The residents age (in months) on entry to the center)

   ``exit``
      The age (in months) of the resident on death, leaving the center
      or July 1, 1975, whichever event occurred first.)

   ``time``
      The length of time (in months) that the resident spent at Channing
      House. (``time=exit-entry``)))

   ``cens``
      The indicator of reight censoring. 1 indicates that the resident
      died at Channing House, 0 indicates that they left the house prior
      to July 1, 1975 or that they were still alive and living in the
      center at that date.

   .. rubric:: Source
      :name: source

   The current data were derived from the "channing" data frame in the
   "boot" package. The original source for the data was

   Hyde, J. (1980) Testing survival with incomplete observations.
   Biostatistics Casebook. R.G. Miller, B. Efron, B.W. Brown and L.E.
   Moses (editors), 31-46. John Wiley.

   .. rubric:: References
      :name: references

   Davison, A.C. and Hinkley, D.V. (1997) Bootstrap Methods and Their
   Application. Cambridge University Press.

   Canty, A. and Ripley, B. (2015) boot package.

   .. rubric:: Examples
      :name: examples

   ::

      data(ChanningHouse)
        
