.. container::

   .. container::

      ================= ===============
      impeachment_polls R Documentation
      ================= ===============

      .. rubric:: Do Americans Support Impeaching Trump?
         :name: do-americans-support-impeaching-trump

      .. rubric:: Description
         :name: description

      Raw data behind this story "Do Americans Support Impeaching
      Trump?" https://projects.fivethirtyeight.com/impeachment-polls/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         impeachment_polls

      .. rubric:: Format
         :name: format

      A data frame with 388 rows of polling data and 24 variables:

      start
         Poll start date, the first date responses were collected

      end
         Poll end date, the last date responses were collected

      pollster
         entity/organization that created poll, collected and published
         data

      sponsor
         sponsor of pollster

      sample_size
         number of respondents for each

      pop
         categorical variable with 3 categories: a, rv, lv – value
         unknown

      tracking
         true/false logical – value unknown

      text
         poll question

      category
         category of poll question with 5 categories: impeach and
         remove, begin proceedings, begin inquiry, reasons, impeach

      include
         yes/no logical – value unknown

      yes
         Percent of respondents in sample who answered "Yes" to the poll
         question

      no
         Percent of respondents in sample who answered "No" to the poll
         question

      unsure
         Percent of respondents in sample who did not answer "Yes" or
         "No" to the poll question

      rep_sample
         number of Republican respondents in sample

      rep_yes
         Percent of Republican respondents who answered "yes"

      rep_no
         Percent of Republican respondents who answered "no"

      dem_sample
         number of Democrat respondents in sample

      dem_yes
         Percent of Democrat respondents who answered "yes"

      dem_no
         Percent of Democrat respondents who answered "no"

      ind_sample
         number of Independent respondents in sample

      ind_yes
         Percent of Independent respondents who answered "yes"

      ind_no
         Percent of Independent respondents who answered "no"

      url
         URL links to poll websites

      notes
         any notes relating to polls in sample

      .. rubric:: Source
         :name: source

      data from
      https://github.com/fivethirtyeight/data/tree/master/impeachment-polls.
