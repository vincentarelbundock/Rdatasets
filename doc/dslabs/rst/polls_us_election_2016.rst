.. container::

   ====================== ===============
   polls_us_election_2016 R Documentation
   ====================== ===============

   .. rubric:: Fivethirtyeight 2016 Poll Data
      :name: fivethirtyeight-2016-poll-data

   .. rubric:: Description
      :name: description

   Poll results from US 2016 presidential elections aggregated from
   HuffPost Pollster, RealClearPolitics, polling firms, and news
   reports. The dataset also includes election results (popular vote)
   and electoral college votes in ``results_us_election_2016``.

   .. rubric:: Usage
      :name: usage

   ::

      data(polls_us_election_2016)

   .. rubric:: Format
      :name: format

   An object of class ``"data.frame"``.

   .. rubric:: Details
      :name: details

   -  state. State in which poll was taken. 'U.S' is for national polls.

   -  startdate. Poll's start date.

   -  enddate. Poll's end date.

   -  pollster. Pollster conducting the poll.

   -  grade. Grade assigned by fivethirtyeight to pollster.

   -  samplesize. Sample size.

   -  population. Type of population being polled.

   -  rawpoll_clinton. Percentage for Hillary Clinton.

   -  rawpoll_trump. Percentage for Donald Trump

   -  rawpoll_johnson. Percentage for Gary Johnson

   -  rawpoll_mcmullin. Percentage for Evan McMullin.

   -  adjpoll_clinton. Fivethirtyeight adjusted percentage for Hillary
      Clinton.

   -  ajdpoll_trump. Fivethirtyeight adjusted percentage for Donald
      Trump

   -  adjpoll_johnson. Fivethirtyeight adjusted percentage for Gary
      Johnson

   -  adjpoll_mcmullin. Fivethirtyeight adjusted percentage for Evan
      McMullin.

   .. rubric:: Source
      :name: source

   The original csv file used to create ``polls_us_election_2016`` is
   here:
   https://projects.fivethirtyeight.com/general-model/president_general_polls_2016.csv

   The data for ``results_us_election_2016`` is from Ballotpedia and can
   be found here:
   https://docs.google.com/spreadsheets/d/1zxyOQDjNOJS_UkzerorUCf2OAdcMcIQEwRciKuYBIZ4/pubhtml?widget=true&headers=false#gid=658726802/

   .. rubric:: Examples
      :name: examples

   ::

      data(polls_us_election_2016)
      head(polls_us_election_2016)
