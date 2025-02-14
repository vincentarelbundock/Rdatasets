.. container::

   .. container::

      =================== ===============
      media_mentions_2020 R Documentation
      =================== ===============

      .. rubric:: 2020 Presidential Candidates Media Mentions
         :name: presidential-candidates-media-mentions

      .. rubric:: Description
         :name: description

      The raw data behind the story "Beto O'Rourke Ignored Cable News -
      And It Ignored Him"
      https://fivethirtyeight.com/features/beto-orourke-ignored-cable-news-and-it-ignored-him/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         media_mentions_cable

         media_mentions_online

      .. rubric:: Format
         :name: format

      2 dataframes about 2020 presidential candidate media mentions

      An object of class ``spec_tbl_df`` (inherits from ``tbl_df``,
      ``tbl``, ``data.frame``) with 954 rows and 6 columns.

      .. rubric:: media_mentions_cable
         :name: media_mentions_cable

      A data frame with 972 rows representing weeks of cable coverage
      and 7 variables:

      date
         start date for the week of coverage

      name
         candidate's name

      matched_clips
         number of 15-second clips in that week that mention the
         specified candidate

      all_candidate_clips
         number of 15-second clips in that week that mention any
         candidates

      total_clips
         total number of 15-second clips that week across the three
         networks

      pct_of_all_candidate_clips
         percentage of clips in which that specific candidate is
         mentioned out of all clips mentioning any candidate for that
         week (matched_clips / all_candidate_clips)

      query
         query used for the GDELT Television API

      .. rubric:: media_mentions_online
         :name: media_mentions_online

      A data frame with 954 rows representing weeks and 6 variables:

      date
         start date for the week of coverage

      name
         candidate's name

      matched_stories
         number of stories in that week that mention the specified
         candidate

      all_candidate_stories
         number of stories in that week that mention any candidate

      pct_of_all_candidate_stories
         percentage of stories in which that specific candidate is
         mentioned out of all stories mentioning any candidate for that
         week (matched_stories / all_candidate_stories)

      query
         query for Media Cloud

      .. rubric:: Source
         :name: source

      The GDELT Television API
      https://blog.gdeltproject.org/gdelt-2-0-television-api-debuts/,
      which processes the data from the TV News Archive
      https://archive.org/details/tv.

      Two collections in the Media Cloud https://mediacloud.org/
      database U.S. Top Online News
      https://sources.mediacloud.org/#/collections/58722749 and U.S. Top
      Digital Native News
      https://sources.mediacloud.org/#/collections/57078150
