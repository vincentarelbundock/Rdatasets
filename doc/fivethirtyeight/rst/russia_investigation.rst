.. container::

   .. container::

      ==================== ===============
      russia_investigation R Documentation
      ==================== ===============

      .. rubric:: Russia Investigation
         :name: russia-investigation

      .. rubric:: Description
         :name: description

      This folder contains data behind the story 'Is The Russia
      Investigation Really Another Watergate?'
      https://projects.fivethirtyeight.com/russia-investigation/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         russia_investigation

      .. rubric:: Format
         :name: format

      A dataset with 194 rows representing every special investigation
      since the Watergate probe began in 1973 and 13 variables

      investigation
         Unique id for each investigation

      investigation_start
         Start date of the investigation

      investigation_end
         End date of the investigation

      investigation_days
         Length, in days, of the investigation. Days will be negative if
         the charge occurred before the investigation began.

      name
         Name of the person charged (if applicable). Will be blank if
         there were no charges.

      indictment_days
         Length, in days, from the start of the investigation to the
         date the person was charged (if applicable). Days will be
         negative if the charge occurred before the investigation began.

      type
         Result of charge (if applicable)

      cp_date
         Date the person plead guilty or was convicted (if applicable)

      cp_days
         Length, in days, from the start of the investigation to the
         date the person plead guilty or was convicted (if applicable)

      overturned
         Whether or not the relevant person's conviction was overturned

      pardoned
         Whether or not the relevant person's charge was pardoned

      american
         Whether or not the relevant person's charge was a U.S. resident

      president
         President at the center of the investigation

      .. rubric:: Source
         :name: source

      Information for this story is drawn from an original data set of
      special counsel, independent counsel and special prosecutor
      investigations from 1973 to 2019. The data set was created by
      consulting historical sources, including final reports generated
      by independent counsels, special counsels and special prosecutors;
      reports in Congressional Quarterly; and contemporaneous news
      stories. Secondary historical sources were also consulted,
      including a 2006 Congressional Research Service report about
      independent counsel investigations and a history of the Watergate
      investigation by Stanley Kutler. Data about pardons was obtained
      from the Office of the Pardon Attorney. Indicted organizations
      were excluded from our analysis. The data set, which is available
      on Github, includes the names of all people charged as part of
      these investigations, as well as the outcome of their cases and
      the dates of major actions in their cases.

      2006 Congressional Research Service report:
      https://digital.library.unt.edu/ark:/67531/metadc815038/m2/1/high_res_d/98-19_2006Jun08.pdf

      dataset in GitHub:
      https://github.com/fivethirtyeight/data/tree/master/russia-investigation
