.. container::

   .. container::

      ======== ===============
      Carseats R Documentation
      ======== ===============

      .. rubric:: Sales of Child Car Seats
         :name: sales-of-child-car-seats

      .. rubric:: Description
         :name: description

      A simulated data set containing sales of child car seats at 400
      different stores.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Carseats

      .. rubric:: Format
         :name: format

      A data frame with 400 observations on the following 11 variables.

      ``Sales``
         Unit sales (in thousands) at each location

      ``CompPrice``
         Price charged by competitor at each location

      ``Income``
         Community income level (in thousands of dollars)

      ``Advertising``
         Local advertising budget for company at each location (in
         thousands of dollars)

      ``Population``
         Population size in region (in thousands)

      ``Price``
         Price company charges for car seats at each site

      ``ShelveLoc``
         A factor with levels ``Bad``, ``Good`` and ``Medium``
         indicating the quality of the shelving location for the car
         seats at each site

      ``Age``
         Average age of the local population

      ``Education``
         Education level at each location

      ``Urban``
         A factor with levels ``No`` and ``Yes`` to indicate whether the
         store is in an urban or rural location

      ``US``
         A factor with levels ``No`` and ``Yes`` to indicate whether the
         store is in the US or not

      .. rubric:: Source
         :name: source

      Simulated data

      .. rubric:: References
         :name: references

      James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
      Introduction to Statistical Learning with applications in R*,
      https://www.statlearning.com, Springer-Verlag, New York

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(Carseats)
         lm.fit=lm(Sales~Advertising+Price,data=Carseats)
