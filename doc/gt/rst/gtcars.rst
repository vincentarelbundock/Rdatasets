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
   specifications such as horsepower, torque, EPA MPG ratings, type of
   drivetrain, and transmission characteristics are provided. The
   country of origin for the car manufacturer is also given.

   .. rubric:: Usage
      :name: usage

   ::

      gtcars

   .. rubric:: Format
      :name: format

   A tibble with 47 rows and 15 variables:

   mfr
      The name of the car manufacturer

   model
      The car's model name

   year
      The car's model year

   trim
      A short description of the car model's trim

   bdy_style
      An identifier of the car's body style, which is either ``coupe``,
      ``convertible``, ``sedan``, or ``hatchback``

   hp, hp_rpm
      The car's horsepower and the associated RPM level

   trq, trq_rpm
      The car's torque and the associated RPM level

   mpg_c, mpg_h
      The miles per gallon fuel efficiency rating for city and highway
      driving

   drivetrain
      The car's drivetrain which, for this dataset is either ``rwd``
      (Rear Wheel Drive) or ``awd`` (All Wheel Drive)

   trsmn
      The codified transmission type, where the number part is the
      number of gears; the car could have automatic transmission
      (``a``), manual transmission (``m``), an option to switch between
      both types (``am``), or, direct drive (``dd``)

   ctry_origin
      The country name for where the vehicle manufacturer is
      headquartered

   msrp
      Manufacturer's suggested retail price in U.S. dollars (USD)

   .. rubric:: Details
      :name: details

   All of the ``gtcars`` have something else in common (aside from the
   high asking prices): they are all grand tourer vehicles. These are
   proper GT cars that blend pure driving thrills with a level of
   comfort that is more expected from a fine limousine (e.g., a
   Rolls-Royce Phantom EWB). You'll find that, with these cars, comfort
   is emphasized over all-out performance. Nevertheless, the driving
   experience should also mean motoring at speed, doing so in style and
   safety.

   .. rubric:: Examples
      :name: examples

   Here is a glimpse at the data available in ``gtcars``.

   .. container:: sourceCode r

      ::

         dplyr::glimpse(gtcars)
         #> Rows: 47
         #> Columns: 15
         #> $ mfr         <chr> "Ford", "Ferrari", "Ferrari", "Ferrari", "Ferrari", "Ferra~
         #> $ model       <chr> "GT", "458 Speciale", "458 Spider", "458 Italia", "488 GTB~
         #> $ year        <dbl> 2017, 2015, 2015, 2014, 2016, 2015, 2017, 2015, 2015, 2015~
         #> $ trim        <chr> "Base Coupe", "Base Coupe", "Base", "Base Coupe", "Base Co~
         #> $ bdy_style   <chr> "coupe", "coupe", "convertible", "coupe", "coupe", "conver~
         #> $ hp          <dbl> 647, 597, 562, 562, 661, 553, 680, 652, 731, 949, 573, 545~
         #> $ hp_rpm      <dbl> 6250, 9000, 9000, 9000, 8000, 7500, 8250, 8000, 8250, 9000~
         #> $ trq         <dbl> 550, 398, 398, 398, 561, 557, 514, 504, 509, 664, 476, 436~
         #> $ trq_rpm     <dbl> 5900, 6000, 6000, 6000, 3000, 4750, 5750, 6000, 6000, 6750~
         #> $ mpg_c       <dbl> 11, 13, 13, 13, 15, 16, 12, 11, 11, 12, 21, 16, 11, 16, 12~
         #> $ mpg_h       <dbl> 18, 17, 17, 17, 22, 23, 17, 16, 16, 16, 22, 22, 18, 20, 20~
         #> $ drivetrain  <chr> "rwd", "rwd", "rwd", "rwd", "rwd", "rwd", "awd", "awd", "r~
         #> $ trsmn       <chr> "7a", "7a", "7a", "7a", "7a", "7a", "7a", "7a", "7a", "7a"~
         #> $ ctry_origin <chr> "United States", "Italy", "Italy", "Italy", "Italy", "Ital~
         #> $ msrp        <dbl> 447000, 291744, 263553, 233509, 245400, 198973, 298000, 29~

   .. rubric:: Function ID
      :name: function-id

   11-3

   .. rubric:: See Also
      :name: see-also

   Other datasets: ``countrypops``, ``exibble``, ``pizzaplace``,
   ``sp500``, ``sza``
