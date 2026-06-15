=========== ===============
eu_ua_fta24 R Documentation
=========== ===============

A Roll Call Vote on Extending Temporary Trade Liberalization Measures Applicable to Ukrainian products under the EU/Euratom/Ukraine Association Agreement
---------------------------------------------------------------------------------------------------------------------------------------------------------

Description
~~~~~~~~~~~

A data set on an April 2024 roll call vote to extend an emergency free
trade agreement with Ukraine.

Usage
~~~~~

.. code:: R

   eu_ua_fta24

Format
~~~~~~

A data frame with 705 observations on the following 9 variables.

``member_id``
   a numeric identifier for a member of the European Parliament

``first_name``
   a first name of the member of the European Parliament

``last_name``
   a last name of the member of the European Parliament

``position``
   a character vector indicating the member's position on the measure
   ("For", "Against", "Did Not Vote", or "Abstain")

``iso2c``
   a two-character ISO code for the country the member represents

``country``
   an English country name for the country the member represents

``group_code``
   an acronym/code for the coalition of the member

``group_label``
   a character vector for the full name of the coalition of the member

``group_short_label``
   a short label for the coalition of the member

Details
~~~~~~~

Information about the exact measures are available from the European
Union. Search: ``A9-0077/2024``. Data in question are the raw data made
available by ``HowTheyVote.eu``
