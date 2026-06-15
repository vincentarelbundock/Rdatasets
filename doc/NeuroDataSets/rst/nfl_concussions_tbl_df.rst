====================== ===============
nfl_concussions_tbl_df R Documentation
====================== ===============

Concussions in the National Football League (2012–2014)
-------------------------------------------------------

Description
~~~~~~~~~~~

This dataset, nfl_concussions_tbl_df, is a tibble containing detailed
information on concussion injuries that occurred in the National
Football League (NFL) from 2012 to 2014. The dataset includes hundreds
of recorded concussion cases, capturing information such as player
identity, team, game, date of injury, position, whether the injury
occurred during pre-season, and multiple injury-related details
including weeks injured, games missed, and reported injury type.

Usage
~~~~~

.. code:: R

   data(nfl_concussions_tbl_df)

Format
~~~~~~

A tibble with 392 observations and 18 variables:

ID
   Unique identifier for each concussion record (character)

Player
   Name of the player who sustained the concussion (character)

Team
   Team of the injured player (character)

Game
   Game in which the injury occurred (character)

Date
   Date of the concussion incident (character)

Opposing Team
   Opponent team during the game (character)

Position
   Player's position (character)

Pre-Season Injury?
   Indicates if the injury occurred during pre-season (character)

Winning Team?
   Indicates if the player’s team won the game (character)

Week of Injury
   Week number of the season when the injury occurred (numeric)

Season
   NFL season year associated with the injury (character)

Weeks Injured
   Number of weeks the player was injured (numeric)

Games Missed
   Number of games missed due to the concussion (numeric)

Unknown Injury?
   Indicates if the injury type was unknown (character)

Reported Injury Type
   Reported type of concussion injury (character)

Total Snaps
   Total snaps played before injury (numeric)

Play Time After Injury
   Playtime after injury occurred (character)

Average Playtime Before Injury
   Average playtime before injury (character)

Details
~~~~~~~

The dataset name has been kept as nfl_concussions_tbl_df to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix
tbl_df indicates that the dataset is a tibble (a modern data frame). The
original content has not been modified in any way. Variable names and
values are provided exactly as they appear in the source.

Source
~~~~~~

Data taken from Kaggle:
https://www.kaggle.com/datasets/rishidamarla/concussions-in-the-nfl-20122014
