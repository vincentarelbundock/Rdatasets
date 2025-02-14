.. container::

   .. container::

      ===== ===============
      peeps R Documentation
      ===== ===============

      .. rubric:: A table of personal information for people all over
         the world
         :name: a-table-of-personal-information-for-people-all-over-the-world

      .. rubric:: Description
         :name: description

      The ``peeps`` dataset contains records for one hundred people
      residing in ten different countries. Each person in the table has
      address information along with their email address and phone
      number. There are also personal characteristics like date of
      birth, height, and weight. This data has been synthesized, and so
      the names within the table have not been taken or based on
      individuals in real life. The street addresses were generated from
      actual street names within real geographic localities, however,
      the street numbers were assigned randomly from a constrained
      number set. While these records do not relate to real people,
      efforts were made to make the data as realistic as possible.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         peeps

      .. rubric:: Format
         :name: format

      A tibble with 100 rows and 14 variables:

      name_given, name_family
         The given and family name of individual.

      address
         The street address of the individual.

      city
         The name of the city or locality in which the individual
         resides.

      state_prov
         The state or province associated with the ``city`` and
         ``address``. This is ``NA`` for individuals residing in
         countries where subdivision data is not needed for generating a
         valid mailing address.

      postcode
         The post code associated with the ``city`` and ``address``.

      country
         The 3-letter ISO 3166-1 country code representative of the
         individual's country.

      email_addr
         The individual's email address.

      phone_number, country_code
         The individual's phone number and the country code associated
         with the phone number.

      gender
         The gender of the individual.

      dob
         The individual's date of birth (DOB) in the ISO 8601 form of
         ``YYYY-MM-DD``.

      height_cm, weight_kg
         The height and weight of the individual in centimeters (cm) and
         kilograms (kg), respectively.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-8

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.11.0`` (July 9, 2024)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gibraltar``, ``gtcars``, ``illness``, ``metro``,
      ``nuclides``, ``photolysis``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(peeps)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_peeps.png
