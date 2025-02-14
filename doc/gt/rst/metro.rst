.. container::

   .. container::

      ===== ===============
      metro R Documentation
      ===== ===============

      .. rubric:: The stations of the Paris Metro
         :name: the-stations-of-the-paris-metro

      .. rubric:: Description
         :name: description

      A dataset with information on all 320 Paris Metro stations as of
      June 2024. Each record represents a station, describing which
      Metro lines are serviced by the station, which other connections
      are available, and annual passenger volumes. Basic location
      information is provided for each station in terms of where they
      reside on a municipal level, and, through latitude/longitude
      coordinate values.

      The system has 16 lines (numbered from 1 to 14, with two
      additional lines: 3bis and 7bis) and covers over 200 kilometers of
      track. The Metro runs on standard gauge tracks (1,435 mm) and
      operates using a variety of rolling stock, including rubber-tired
      trains and steel-wheeled trains (which are far more common).

      The Metro is operated by the RATP, which also operates other
      transit systems in the region, including buses, trams, and the
      RER. The RER is an important component of the region's transit
      infrastructure, and several RER stations have connectivity with
      the Metro. This integration allows passengers to transfer between
      those two systems seamlessly. The Metro also has connections to
      the Transilien rail network, tramway stations, several major train
      stations (e.g., Gare du Nord, Gare de l'Est, etc.), and many bus
      lines.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         metro

      .. rubric:: Format
         :name: format

      A tibble with 320 rows and 11 variables:

      name
         The name of the station.

      caption
         In some cases, a station will have a caption that might
         describe a nearby place of interest. This is ``NA`` if there
         isn't a caption for the station name.

      lines
         All Metro lines associated with the station. This is a
         ``character``-based, comma-separated series of line names.

      connect_rer
         Station connections with the RER. The RER system has five lines
         (A, B, C, D, and E) with 257 stations and several interchanges
         with the Metro.

      connect_tram
         Connections with tramway lines. This system has twelve lines in
         operation (T1, T2, T3a, T3b, T4, T5, T6, T7, T8, T9, T11, and
         T13) with 235 stations.

      connect_transilien
         Connections with Transilien lines. This system has eight lines
         in operation (H, J, K, L, N, P, R, and U).

      connect_other
         Other connections with transportation infrastructure such as
         regional, intercity, night, and high-speed trains (typically at
         railway stations).

      latitude, longitude
         The location of the station, given as latitude and longitude
         values in decimal degrees.

      location
         The arrondissement of Paris or municipality in which the
         station resides. For some stations located at borders, the
         grouping of locations will be presented as a comma-separated
         series

      passengers
         The total number of Metro station entries during 2021. Some of
         the newest stations in the Metro system do not have this data,
         thus they show ``NA`` values.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-10

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.9.0`` (Mar 31, 2023)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gibraltar``, ``gtcars``, ``illness``, ``nuclides``,
      ``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(metro)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_metro.png
