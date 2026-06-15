============= ===============
google_trends R Documentation
============= ===============

The Media Really Started Paying Attention to Puerto Rico When Trump Did
-----------------------------------------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "The Media Really Started Paying Attention
to Puerto Rico When Trump Did"
https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/:
Google Trends Data.

Usage
~~~~~

.. code:: R

   google_trends

Format
~~~~~~

A data frame with 37 rows representing dates and 5 variables:

date
   Date

hurricane_harvey_us
   US Google search interest on the specified date for Hurricane Harvey

hurricane_irma_us
   US Google search interest on the specified date for Hurricane Irma

hurricane_maria_us
   US Google search interest on the specified date for Hurricane Maria

hurricane_jose_us
   US Google search interest on the specified date for Hurricane Jose

Details
~~~~~~~

Google search interest is measured in search term popularity relative to
peak popularity in the given region and time period (with 100 as peak
popularity)

Source
~~~~~~

Google Trends https://trends.google.com/trends/

See Also
~~~~~~~~

``mediacloud_hurricanes``, ``mediacloud_states``,
``mediacloud_online_news``, ``mediacloud_trump``, ``tv_hurricanes``,
``tv_hurricanes_by_network``, ``tv_states``
