.. container::

   .. container::

      ============ ===============
      airbnb_small R Documentation
      ============ ===============

      .. rubric:: Chicago AirBnB Data
         :name: chicago-airbnb-data

      .. rubric:: Description
         :name: description

      The AirBnB data was collated by Trinh and Ameri as part of a
      course project at St Olaf College, and distributed with
      "Broadening Your Statistical Horizons" by Legler and Roback. This
      data set, a subset of the airbnb data in the bayesrules package,
      includes the prices and features for 869 AirBnB listings in
      Chicago, collected in 2016.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         airbnb_small

      .. rubric:: Format
         :name: format

      A data frame with 869 rows and 12 variables. Each row represents a
      single AirBnB listing.

      price
         the nightly price of the listing (in USD)

      rating
         the listing's average rating, on a scale from 1 to 5

      reviews
         number of user reviews the listing has

      room_type
         the type of listing (eg: Shared room)

      accommodates
         number of guests the listing accommodates

      bedrooms
         the number of bedrooms the listing has

      minimum_stay
         the minimum number of nights to stay in the listing

      neighborhood
         the neighborhood in which the listing is located

      district
         the broader district in which the listing is located

      walk_score
         the neighborhood's rating for walkability (0 - 100)

      transit_score
         the neighborhood's rating for access to public transit (0 -
         100)

      bike_score
         the neighborhood's rating for bikeability (0 - 100)

      .. rubric:: Source
         :name: source

      Ly Trinh and Pony Ameri (2018). Airbnb Price Determinants: A
      Multilevel Modeling Approach. Project for Statistics 316-Advanced
      Statistical Modeling, St. Olaf College. Julie Legler and Paul
      Roback (2019). Broadening Your Statistical Horizons: Generalized
      Linear Models and Multilevel Models.
      https://bookdown.org/roback/bookdown-bysh/.
      https://github.com/proback/BeyondMLR/blob/master/data/airbnb.csv/
