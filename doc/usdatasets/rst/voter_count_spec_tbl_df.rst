======================= ===============
voter_count_spec_tbl_df R Documentation
======================= ===============

US Voter Turnout Data.
----------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'voter_count_spec_tbl_df' to avoid
confusion with other packages in the R ecosystem. This naming convention
helps distinguish this dataset as part of the 'usdatasets' package and
identifies it as a special tibble. The original content of the dataset
has not been modified.

Usage
~~~~~

.. code:: R

   data(voter_count_spec_tbl_df)

Format
~~~~~~

A special tibble containing voting statistics across different years and
regions:

year
   Year of the election.

region
   Region of the voters.

voting_eligible_population
   Total population eligible to vote.

total_ballots_counted
   Total number of ballots counted.

highest_office
   Total votes for the highest office.

percent_total_ballots_counted
   Percentage of total ballots counted.

percent_highest_office
   Percentage of votes for the highest office.

Source
~~~~~~

Election data from various sources.
