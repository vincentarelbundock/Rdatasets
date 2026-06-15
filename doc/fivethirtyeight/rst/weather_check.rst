============= ===============
weather_check R Documentation
============= ===============

Where People Go To Check The Weather
------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "Where People Go To Check The Weather"
https://fivethirtyeight.com/features/weather-forecast-news-app-habits/.

Usage
~~~~~

.. code:: R

   weather_check

Format
~~~~~~

A data frame with 928 rows representing respondents and 9 variables:

respondent_id
   Respondent ID

ck_weather
   Do you typically check a daily weather report?

weather_source
   How do you typically check the weather?

weather_source_site
   If they responded "A specific website or app" when asked how they
   typically check the weather, they were asked to write-in the app or
   website they used.

ck_weather_watch
   If you had a smartwatch (like the soon to be released Apple Watch),
   how likely or unlikely would you be to check the weather on that
   device?

age
   Age

female
   Gender

hhold_income
   How much total combined money did all members of your HOUSEHOLD earn
   last year?

region
   US Region

Source
~~~~~~

The source of the data is a Survey Monkey Audience poll commissioned by
FiveThirtyEight and conducted from April 6 to April 10, 2015. See
https://github.com/fivethirtyeight/data/tree/master/weather-check
