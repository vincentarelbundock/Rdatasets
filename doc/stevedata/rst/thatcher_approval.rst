.. container::

   ================= ===============
   thatcher_approval R Documentation
   ================= ===============

   .. rubric:: Margaret Thatcher Satisfaction Ratings, 1980-1990
      :name: thatcher_approval

   .. rubric:: Description
      :name: description

   A data set on satisfaction/dissatisfaction ratings during Margaret
   Thatcher's tenure as prime minister.

   .. rubric:: Usage
      :name: usage

   ::

      thatcher_approval

   .. rubric:: Format
      :name: format

   A data frame with 125 observations on the following 8 variables.

   ``poll_date``
      the effective "date" of the public opinion poll

   ``date``
      a date for the poll, to make for easier plotting

   ``govt_sat``
      the percentage of respondents saying they were satisfied with the
      government

   ``govt_dis``
      the percentage of respondents saying they were dissatisfied with
      the government

   ``thatcher_sat``
      the percentage of respondents saying they were satisfied with
      Margaret Thatcher

   ``thatcher_dis``
      the percentage of respondents saying they were dissatisfied with
      Margaret Thatcher

   ``opp_sat``
      the percentage of respondents saying they were satisfied with the
      leader of the opposition

   ``opp_dis``
      the percentage of respondents saying they were dissatisfied with
      the leader of the opposition

   .. rubric:: Details
      :name: details

   Data come from Ipsos. "Leader of the opposition" was typically named
   in the exact poll. In the lifetime of this series, the leader of the
   opposition was James Callaghan until Nov. 10 1980. Thereafter, it was
   Michael Foot until Oct. 2 1983. Neil Kinnock replaces him for the
   duration of this series. Interpret "leader of the opposition" with
   that in mind.

   The date variable is, again, for simple convenience to make for
   easier plotting. In the absence of a specific day provided by Ipsos,
   the poll benchmarks to the first of the month. In the case of a known
   period of days, it benchmarks to the first day provided.
