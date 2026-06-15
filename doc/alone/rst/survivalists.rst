============ ===============
survivalists R Documentation
============ ===============

Survivalists
------------

Description
~~~~~~~~~~~

Contains details of each survivalist including demographics and results.

Usage
~~~~~

.. code:: R

   survivalists

Format
~~~~~~

This data frame contains the following columns:

``version``
   Country code for the version of the show

``season``
   The season number

``id``
   Survivalist ID

``name``
   Name of the survivalist

``first_name``
   First name of the survivalist

``last_name``
   Last name of the survivalist

``age``
   Age of survivalist

``gender``
   Gender

``city``
   City

``state``
   State

``country``
   Country

``result``
   Place the survivalist finished in the season

``days_lasted``
   The number of days lasted in the game before tapping out or winning

``medically_evacuated``
   Logical. If the survivalist was medically evacuated from the game

``reason_tapped_out``
   The reason the survivalist tapped out of the game. ``NA`` means they
   were the winner

``reason_category``
   A simplified category of the reason for tapping out

``episode_tapped``
   Episode tapped out

``team``
   The team they were associated with (only for season 4)

``day_linked_up``
   Day the team members linked up

``profession``
   Profession

Source
~~~~~~

https://en.wikipedia.org/wiki/List_of_Alone_episodes#Season_1_(2015)_-_Vancouver_Island

Examples
~~~~~~~~

.. code:: R

   library(dplyr)
   library(ggplot2)

   survivalists |>
     count(reason_category, gender) |>
     filter(!is.na(reason_category)) |>
     ggplot(aes(reason_category, n, fill = gender)) +
     geom_col()
