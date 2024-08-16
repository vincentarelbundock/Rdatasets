.. container::

   .. container::

      ======= ===============
      LAhomes R Documentation
      ======= ===============

      .. rubric:: LAhomes
         :name: lahomes

      .. rubric:: Description
         :name: description

      Data collected by Andrew Bray at Reed College on characteristics
      of LA Homes in 2010.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         LAhomes

      .. rubric:: Format
         :name: format

      A data frame with 1594 observations on the following 8 variables.

      city
         City where the home is located.

      type
         Type of home with levels ``Condo/Twh`` - condo or townhouse,
         ``SFR`` - single family residence, and ``NA``

      bed
         Number of bedrooms in the home.

      bath
         Number of bathrooms in the home.

      garage
         Number of cars that can be parked in the garage. Note that a
         value of ``4`` refers to 4 or more garage spaces.

      sqft
         Squarefootage of the home.

      pool
         Indicates if the home has a pool.

      price
         Listing price of the home.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)

         ggplot(LAhomes, aes(sqft, price)) +
           geom_point(alpha = 0.2) +
           theme_minimal() +
           labs(
             title = "Can we predict list price from squarefootage?",
             subtitle = "Homes in the Los Angeles area",
             x = "Square feet",
             y = "List price"
           )
