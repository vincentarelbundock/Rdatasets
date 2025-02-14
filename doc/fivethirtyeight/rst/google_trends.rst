.. container::

   .. container::

      ============= ===============
      google_trends R Documentation
      ============= ===============

      .. rubric:: The Media Really Started Paying Attention to Puerto
         Rico When Trump Did
         :name: the-media-really-started-paying-attention-to-puerto-rico-when-trump-did

      .. rubric:: Description
         :name: description

      The raw data behind the story "The Media Really Started Paying
      Attention to Puerto Rico When Trump Did"
      https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/:
      Google Trends Data.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         google_trends

      .. rubric:: Format
         :name: format

      A data frame with 37 rows representing dates and 5 variables:

      date
         Date

      hurricane_harvey_us
         US Google search interest on the specified date for Hurricane
         Harvey

      hurricane_irma_us
         US Google search interest on the specified date for Hurricane
         Irma

      hurricane_maria_us
         US Google search interest on the specified date for Hurricane
         Maria

      hurricane_jose_us
         US Google search interest on the specified date for Hurricane
         Jose

      .. rubric:: Details
         :name: details

      Google search interest is measured in search term popularity
      relative to peak popularity in the given region and time period
      (with 100 as peak popularity)

      .. rubric:: Source
         :name: source

      Google Trends https://trends.google.com/trends/

      .. rubric:: See Also
         :name: see-also

      ``mediacloud_hurricanes``, ``mediacloud_states``,
      ``mediacloud_online_news``, ``mediacloud_trump``,
      ``tv_hurricanes``, ``tv_hurricanes_by_network``, ``tv_states``
