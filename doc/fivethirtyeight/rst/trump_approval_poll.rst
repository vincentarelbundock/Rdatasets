.. container::

   .. container::

      =================== ===============
      trump_approval_poll R Documentation
      =================== ===============

      .. rubric:: How Popular is Donald Trump
         :name: how-popular-is-donald-trump

      .. rubric:: Description
         :name: description

      The raw data behind the story: "How Popular is Donald Trump"
      https://projects.fivethirtyeight.com/trump-approval-ratings/:
      Approval Poll Dataset

      .. rubric:: Usage
         :name: usage

      .. code:: R

         trump_approval_poll

      .. rubric:: Format
         :name: format

      A data frame with 3051 rows representing individual polls and 20
      variables:

      subgroup
         The subgroup the poll falls into as defined by the type of
         people being polled (all polls, voters, adults)

      start_date
         The date the polling began

      end_date
         The date the polling concluded

      pollster
         The polling group which produced the poll

      grade
         The grade for President Trump that the respondents' approval
         ratings correspond to

      sample_size
         The sample size of the poll

      population
         The type of people being polled (a for adults, lv for likely
         voters, rv for registered voters)

      weight
         The weight fivethirtyeight gives the poll when determining
         approval ratings based on historical accuracy of the pollster

      approve
         The percentage of respondents who approve of the president

      disapprove
         The percentage of respondents who disapprove of the president

      adjusted_approve
         The percentage of respondents who approve of the president
         adjusted for systematic tendencies of the polling firm

      adjusted_disapprove
         The percentage of respondents who approve of the president
         adjusted for systematic tendencies of the polling firm

      multiversions
         True if there are multiple versions of the poll, False if there
         are not

      tracking
         TRUE if the poll was tracked, FALSE if not

      url
         Poll result URL

      poll_id
         Poll ID number

      question_id
         ID number for the question being polled

      created_date
         Date the poll was created

      timestamp
         Date and time the poll was compiled

      .. rubric:: Details
         :name: details

      Variables "model_date", "influence", and "president" were deleted
      because each observation contained the same value for these
      variables: January 5, 2018; 0; and Donald Trump respectively.

      .. rubric:: Source
         :name: source

      https://projects.fivethirtyeight.com/trump-approval-data/approval_polllist.csv
      and
      https://projects.fivethirtyeight.com/trump-approval-data/approval_topline.csv

      .. rubric:: See Also
         :name: see-also

      ``trump_approval_trend``
