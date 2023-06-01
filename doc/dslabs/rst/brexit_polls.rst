.. container::

   ============ ===============
   brexit_polls R Documentation
   ============ ===============

   .. rubric:: Brexit Poll Data
      :name: brexit_polls

   .. rubric:: Description
      :name: description

   Brexit (EU referendum) poll outcomes for 127 polls from January 2016
   to the referendum date on June 23, 2016.

   .. rubric:: Usage
      :name: usage

   ::

      brexit_polls

   .. rubric:: Format
      :name: format

   An object of class ``"data.frame"``.

   .. rubric:: Details
      :name: details

   -  startdate. Start date of poll.

   -  enddate. End date of poll.

   -  pollster. Pollster conducting the poll.

   -  poll_type. Online or telephone poll.

   -  samplesize. Sample size of poll.

   -  remain. Proportion voting Remain.

   -  leave. Proportion voting Leave.

   -  undecided. Proportion of undecided voters.

   -  spread. Spread calculated as remain - leave.

   .. rubric:: Source
      :name: source

   `Wikipedia <https://en.wikipedia.org/w/index.php?title=Opinion_polling_for_the_United_Kingdom_European_Union_membership_referendum&oldid=896735054/>`__

   .. rubric:: Examples
      :name: examples

   ::

      head(brexit_polls)
