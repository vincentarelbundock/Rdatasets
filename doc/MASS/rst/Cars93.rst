.. container::

   .. container::

      ====== ===============
      Cars93 R Documentation
      ====== ===============

      .. rubric:: Data from 93 Cars on Sale in the USA in 1993
         :name: data-from-93-cars-on-sale-in-the-usa-in-1993

      .. rubric:: Description
         :name: description

      The ``Cars93`` data frame has 93 rows and 27 columns.

      .. rubric:: Usage
         :name: usage

      ::

         Cars93

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      ``Manufacturer``
         Manufacturer.

      ``Model``
         Model.

      ``Type``
         Type: a factor with levels ``"Small"``, ``"Sporty"``,
         ``"Compact"``, ``"Midsize"``, ``"Large"`` and ``"Van"``.

      ``Min.Price``
         Minimum Price (in $1,000): price for a basic version.

      ``Price``
         Midrange Price (in $1,000): average of ``Min.Price`` and
         ``Max.Price``.

      ``Max.Price``
         Maximum Price (in $1,000): price for “a premium version”.

      ``MPG.city``
         City MPG (miles per US gallon by EPA rating).

      ``MPG.highway``
         Highway MPG.

      ``AirBags``
         Air Bags standard. Factor: none, driver only, or driver &
         passenger.

      ``DriveTrain``
         Drive train type: rear wheel, front wheel or 4WD; (factor).

      ``Cylinders``
         Number of cylinders (missing for Mazda RX-7, which has a rotary
         engine).

      ``EngineSize``
         Engine size (litres).

      ``Horsepower``
         Horsepower (maximum).

      ``RPM``
         RPM (revs per minute at maximum horsepower).

      ``Rev.per.mile``
         Engine revolutions per mile (in highest gear).

      ``Man.trans.avail``
         Is a manual transmission version available? (yes or no,
         Factor).

      ``Fuel.tank.capacity``
         Fuel tank capacity (US gallons).

      ``Passengers``
         Passenger capacity (persons)

      ``Length``
         Length (inches).

      ``Wheelbase``
         Wheelbase (inches).

      ``Width``
         Width (inches).

      ``Turn.circle``
         U-turn space (feet).

      ``Rear.seat.room``
         Rear seat room (inches) (missing for 2-seater vehicles).

      ``Luggage.room``
         Luggage capacity (cubic feet) (missing for vans).

      ``Weight``
         Weight (pounds).

      ``Origin``
         Of non-USA or USA company origins? (factor).

      ``Make``
         Combination of Manufacturer and Model (character).

      .. rubric:: Details
         :name: details

      Cars were selected at random from among 1993 passenger car models
      that were listed in both the *Consumer Reports* issue and the
      *PACE Buying Guide*. Pickup trucks and Sport/Utility vehicles were
      eliminated due to incomplete information in the *Consumer Reports*
      source. Duplicate models (e.g., Dodge Shadow and Plymouth
      Sundance) were listed at most once.

      Further description can be found in Lock (1993).

      .. rubric:: Source
         :name: source

      Lock, R. H. (1993) 1993 New Car Data. *Journal of Statistics
      Education* **1**\ (1).
      `doi:10.1080/10691898.1993.11910459 <https://doi.org/10.1080/10691898.1993.11910459>`__

      .. rubric:: References
         :name: references

      Venables, W. N. and Ripley, B. D. (2002) *Modern Applied
      Statistics with S-PLUS.* Fourth Edition. Springer.
