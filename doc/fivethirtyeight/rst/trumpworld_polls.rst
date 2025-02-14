.. container::

   .. container::

      ================ ===============
      trumpworld_polls R Documentation
      ================ ===============

      .. rubric:: What the World Thinks of Trump
         :name: what-the-world-thinks-of-trump

      .. rubric:: Description
         :name: description

      The raw data behind the story "What the World Thinks of Trump"
      https://fivethirtyeight.com/features/what-the-world-thinks-of-trump/:
      Trump World Polls Dataset.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         trumpworld_polls

      .. rubric:: Format
         :name: format

      A data frame with 32 rows representing years and 40 variables:

      year
         Year the poll was conducted

      avg
         The average percentage people who answered the poll question
         positively (support the president or have a favorable view of
         the U.S.)

      canada
         The percentage of people from Canada who answered the poll
         question positively

      france
         The percentage of people from France who answered the poll
         question positively

      germany
         The percentage of people from Germany who answered the poll
         question positively

      greece
         The percentage of people from Greece who answered the poll
         question positively

      hungary
         The percentage of people from Hungary who answered the poll
         question positively

      italy
         The percentage of people from Italy who answered the poll
         question positively

      netherlands
         The percentage of people from Netherlands who answered the poll
         question positively

      poland
         The percentage of people from Poland who answered the poll
         question positively

      spain
         The percentage of people from Spain who answered the poll
         question positively

      sweden
         The percentage of people from Sweden who answered the poll
         question positively

      uk
         The percentage of people from the U.K. who answered the poll
         question positively

      russia
         The percentage of people from Russia who answered the poll
         question positively

      australia
         The percentage of people from Australia who answered the poll
         question positively

      india
         The percentage of people from India who answered the poll
         question positively

      indonesia
         The percentage of people from Indonesia who answered the poll
         question positively

      japan
         The percentage of people from Japan who answered the poll
         question positively

      philippines
         The percentage of people from the Philippines who answered the
         poll question positively

      south_korea
         The percentage of people from South Korea who answered the poll
         question positively

      vietnam
         The percentage of people from Vietnam who answered the poll
         question positively

      israel
         The percentage of people from Israel who answered the poll
         question positively

      jordan
         The percentage of people from Jordan who answered the poll
         question positively

      lebanon
         The percentage of people from Lebanon who answered the poll
         question positively

      tunisia
         The percentage of people from Tunisia who answered the poll
         question positively

      turkey
         The percentage of people from Turkey who answered the poll
         question positively

      ghana
         The percentage of people from Ghana who answered the poll
         question positively

      kenya
         The percentage of people from Kenya who answered the poll
         question positively

      nigeria
         The percentage of people from Nigeria who answered the poll
         question positively

      senegal
         The percentage of people from Senegal who answered the poll
         question positively

      south_africa
         The percentage of people from South Africa who answered the
         poll question positively

      tanzania
         The percentage of people from Tanzania who answered the poll
         question positively

      argentina
         The percentage of people from Argentina who answered the poll
         question positively

      brazil
         The percentage of people from Brazil who answered the poll
         question positively

      chile
         The percentage of people from Chile who answered the poll
         question positively

      colombia
         The percentage of people from Colombia who answered the poll
         question positively

      mexico
         The percentage of people from Mexico who answered the poll
         question positively

      peru
         The percentage of people from Peru who answered the poll
         question positively

      venezuela
         The percentage of people from Venezuela who answered the poll
         question positively

      question
         The item being polled. Specifically, whether respondents: 1)
         Have a favorable view of the U.S. or 2) Trust the U.S.
         President when it comes to foreign affairs

      .. rubric:: Source
         :name: source

      Pew Research Center
      https://www.pewresearch.org/fact-tank/2017/07/17/9-charts-on-how-the-world-sees-trump/

      .. rubric:: See Also
         :name: see-also

      ``trumpworld_issues``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         trumpworld_polls_tidy <- trumpworld_polls %>%
           pivot_longer(-c("year", "avg", "question"), 
             names_to = "country", values_to = "percent_positive")
