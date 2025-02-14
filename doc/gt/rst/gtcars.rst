.. container::

   .. container::

      ====== ===============
      gtcars R Documentation
      ====== ===============

      .. rubric:: Deluxe automobiles from the 2014-2017 period
         :name: deluxe-automobiles-from-the-2014-2017-period

      .. rubric:: Description
         :name: description

      Expensive and fast cars. Not your father's ``mtcars``. Each row
      describes a car of a certain make, model, year, and trim. Basic
      specifications such as horsepower, torque, EPA MPG ratings, type
      of drivetrain, and transmission characteristics are provided. The
      country of origin for the car manufacturer is also given.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         gtcars

      .. rubric:: Format
         :name: format

      A tibble with 47 rows and 15 variables:

      mfr
         The name of the car manufacturer.

      model
         The car's model name.

      year
         The car's model year.

      trim
         A short description of the car model's trim.

      bdy_style
         An identifier of the car's body style, which is either
         ``"coupe"``, ``"convertible"``, ``"sedan"``, or
         ``"hatchback"``.

      hp, hp_rpm
         The car's horsepower and the associated RPM level.

      trq, trq_rpm
         The car's torque and the associated RPM level.

      mpg_c, mpg_h
         The miles per gallon fuel efficiency rating for city and
         highway driving.

      drivetrain
         The car's drivetrain which, for this dataset, is either
         ``"rwd"`` (Rear Wheel Drive) or ``"awd"`` (All Wheel Drive).

      trsmn
         An encoding of the transmission type, where the number part is
         the number of gears. The car could have automatic transmission
         (``"a"``), manual transmission (``"m"``), an option to switch
         between both types (``"am"``), or, direct drive (``"dd"``)

      ctry_origin
         The country name for where the vehicle manufacturer is
         headquartered.

      msrp
         Manufacturer's suggested retail price in U.S. dollars (USD).

      .. rubric:: Details
         :name: details

      All of the ``gtcars`` have something else in common (aside from
      the high asking prices): they are all grand tourer vehicles. These
      are proper GT cars that blend pure driving thrills with a level of
      comfort that is more expected from a fine limousine (e.g., a
      Rolls-Royce Phantom EWB). You'll find that, with these cars,
      comfort is emphasized over all-out performance. Nevertheless, the
      driving experience should also mean motoring at speed, doing so in
      style and safety.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-3

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.2.0.5`` (March 31, 2020)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gibraltar``, ``illness``, ``metro``, ``nuclides``,
      ``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(gtcars)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_gtcars.png
