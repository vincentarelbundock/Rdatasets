.. container::

   .. container::

      ==================== ===============
      trump_approval_trend R Documentation
      ==================== ===============

      .. rubric:: How Popular is Donald Trump
         :name: how-popular-is-donald-trump

      .. rubric:: Description
         :name: description

      The raw data behind the story: "How Popular is Donald Trump"
      https://projects.fivethirtyeight.com/trump-approval-ratings/:
      Approval Trend Dataset.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         trump_approval_trend

      .. rubric:: Format
         :name: format

      A data frame with 1044 rows representing poll trends and 11
      variables:

      subgroup
         The subgroup the poll falls into as defined by the type of
         people being polled (all polls, voters, adults)

      modeldate
         The date the model was created

      approve_estimate
         Estimated approval ratings

      approve_high
         Higher bound of the estimated approval percentage

      approve_low
         Lower bound of the estimated approval percentage

      disapprove_estimate
         Estimated disapproval percentage

      disapprove_high
         Higher bound of the estimated disapproval percentage

      disapprove_low
         Lower bound of the estimated disapproval percentage

      timestamp
         Date and time the model was compiled

      .. rubric:: Details
         :name: details

      The Variable "president" was removed because all values were
      "Donald Trump"

      .. rubric:: Source
         :name: source

      https://projects.fivethirtyeight.com/trump-approval-data/approval_topline.csv

      .. rubric:: See Also
         :name: see-also

      ``trump_approval_poll``
