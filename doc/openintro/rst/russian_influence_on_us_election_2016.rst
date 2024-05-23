.. container::

   .. container::

      ===================================== ===============
      russian_influence_on_us_election_2016 R Documentation
      ===================================== ===============

      .. rubric:: Russians' Opinions on US Election Influence in 2016
         :name: russians-opinions-on-us-election-influence-in-2016

      .. rubric:: Description
         :name: description

      Survey of Russian citizens on whether they believed their
      government tried to influence the 2016 US election. The survey was
      taken in Spring 2018 by Pew Research.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         russian_influence_on_us_election_2016

      .. rubric:: Format
         :name: format

      A data frame with 506 observations on the following variable.

      influence_2016
         Response of the Russian survey participant to the question of
         whether their government tried to influence the 2016 election
         in the United States.

      .. rubric:: Details
         :name: details

      The actual sample size was 1000. However, the original data were
      not from a simple random sample; after accounting for the design,
      the equivalent sample size was 506, which was what was used for
      the data set here to keep things simpler for intro stat analyses.

      .. rubric:: Source
         :name: source

      https://www.pewresearch.org/global/2018/08/21/russians-say-their-government-did-not-try-to-influence-u-s-presidential-election/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         table(russian_influence_on_us_election_2016)
