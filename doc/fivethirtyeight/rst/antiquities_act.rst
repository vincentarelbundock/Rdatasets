=============== ===============
antiquities_act R Documentation
=============== ===============

Trump Might Be The First President To Scrap A National Monument
---------------------------------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "Trump Might Be The First President To
Scrap A National Monument"
https://fivethirtyeight.com/features/trump-might-be-the-first-president-to-scrap-a-national-monument/.

Usage
~~~~~

.. code:: R

   antiquities_act

Format
~~~~~~

A data frame with 344 rows representing acts and 9 variables (Note that
7 of the original rows failed to parse and are omitted here):

current_name
   Current name of piece of land designated under the Antiquities Act

states
   State(s) or territory where land is located

original_name
   If included, original name of piece of land designated under the
   Antiquities Act

current_agency
   Current land management agency. NPS = National Parks Service, BLM =
   Bureau of Land Management, USFS = US Forest Service, FWS = US Fish
   and Wildlife Service, NOAA = National Oceanic and National Oceanic
   and Atmospheric Administration

action
   Type of action taken on land

date
   Date of action

year
   Year of action

pres_or_congress
   President or congress that issued action

acres_affected
   Acres affected by action. Note that total current acreage is not
   included. National monuments that cover ocean are listed in square
   miles.

Source
~~~~~~

National Parks Conservation Association https://www.npca.org/ and
National Parks Service Archeology Program
https://www.nps.gov/history/archeology/sites/antiquities/MonumentsList.htm
