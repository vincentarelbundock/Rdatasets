.. container::

   .. container::

      =========== ===============
      RailsTrails R Documentation
      =========== ===============

      .. rubric:: Homes in Northampton MA Near Rail Trails
         :name: homes-in-northampton-ma-near-rail-trails

      .. rubric:: Description
         :name: description

      Sample of homes in Northampton, MA to see whether being close to a
      bike trail enhances the value of the home

      .. rubric:: Format
         :name: format

      A data frame with 104 observations on the following 30 variables.

      ``HouseNum``
         Unique house number

      ``Acre``
         Lot size for the house (in acres)

      ``AcreGroup``
         Lot size groups (``<= 1/4 acre`` or ``> 1/4 acre``)

      ``Adj1998``
         Estimated 1998 price (in thousands of 2014 dollars)

      ``Adj2007``
         Estimated 2007 price (in thousands of 2014 dollars)

      ``Adj2011``
         Estimated 2011 price (in thousands of 2014 dollars)

      ``BedGroup``
         Bedroom groups (``1-2 beds``, ``3 beds``, or ``4+ beds``)

      ``Bedrooms``
         Number of bedrooms

      ``BikeScore``
         Bike friendliness (0-100 score, higher scores are better)

      ``Diff2014``
         Difference in price between 2014 estimate and adjusted 1998
         estimate (in thousands of dollars)

      ``Distance``
         Distance (in feet) to the nearest entry point to the rail trail
         network

      ``DistGroup``
         Distance groups, compared to 1/2 mile (``Closer`` or
         ``Farther Away``)

      ``GarageSpaces``
         Number of garage spaces (0-4)

      ``GarageGroup``
         Any garage spaces? (``no`` or ``yes``)

      ``Latitude``
         Latitude (for mapping)

      ``Longitude``
         Longitude (for mapping)

      ``NumFullBaths``
         Number of full baths (includes shower or bathtub)

      ``NumHalfBaths``
         Number of half baths (no shower or bathtub)

      ``NumRooms``
         Number of rooms

      ``PctChange``
         Percentage change from adjusted 1998 price to 2014 (value of
         zero means no change)

      ``Price1998``
         Zillow 10 year estimate from 2008 (in thousands of dollars)

      ``Price2007``
         Zillow price estimate from 2007 (in thousands of dollars)

      ``Price2011``
         Zillow price estimate from 2011 (in thousands of dollars)

      ``Price2014``
         Zillow price estimate from 2014 (in thousands of dollars)

      ``SFGroup``
         SquareFeet group (``<= 1500 sf`` or ``> 1500 sf``)

      ``SquareFeet``
         Square footage of interior finished space (in thousands of sf)

      ``StreetName``
         Street name

      ``StreetNum``
         House number on street

      ``WalkScore``
         Walk friendliness (0-100 score, higher scores are better)

      ``Zip``
         Location (``1060`` = Northampton or ``1062`` = Florence)

      .. rubric:: Details
         :name: details

      This dataset comprises 104 homes in Northampton, MA that were sold
      in 2007. The authors measured the shortest distance from each home
      to a railtrail on streets and pathways with Google maps and
      recorded the Zillow.com estimate of each home's price in 1998 and
      2011. Additional attributes such as square footage, number of
      bedrooms and number of bathrooms are available from a realty
      database from 2007. We divide the houses into two groups based on
      distance to the trail (DistGroup).

      .. rubric:: Source
         :name: source

      From July 2015 JSE Datasets and Stories: "Rail Trails and Property
      Values: Is There an Association?", Ella Hartenian, Smith College
      and Nicholas J. Horton, Amherst College.

      http://www.amstat.org/publications/jse/v23n2/horton.pdf
