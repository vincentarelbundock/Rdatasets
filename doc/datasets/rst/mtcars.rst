.. container::

   ====== ===============
   mtcars R Documentation
   ====== ===============

   .. rubric:: Motor Trend Car Road Tests
      :name: mtcars

   .. rubric:: Description
      :name: description

   The data was extracted from the 1974 *Motor Trend* US magazine, and
   comprises fuel consumption and 10 aspects of automobile design and
   performance for 32 automobiles (1973–74 models).

   .. rubric:: Usage
      :name: usage

   ::

      mtcars

   .. rubric:: Format
      :name: format

   A data frame with 32 observations on 11 (numeric) variables.

   ===== ==== ========================================
   [, 1] mpg  Miles/(US) gallon
   [, 2] cyl  Number of cylinders
   [, 3] disp Displacement (cu.in.)
   [, 4] hp   Gross horsepower
   [, 5] drat Rear axle ratio
   [, 6] wt   Weight (1000 lbs)
   [, 7] qsec 1/4 mile time
   [, 8] vs   Engine (0 = V-shaped, 1 = straight)
   [, 9] am   Transmission (0 = automatic, 1 = manual)
   [,10] gear Number of forward gears
   [,11] carb Number of carburetors
   ===== ==== ========================================

   .. rubric:: Note
      :name: note

   Henderson and Velleman (1981) comment in a footnote to Table 1:
   ‘Hocking [original transcriber]'s noncrucial coding of the Mazda's
   rotary engine as a straight six-cylinder engine and the Porsche's
   flat engine as a V engine, as well as the inclusion of the diesel
   Mercedes 240D, have been retained to enable direct comparisons to be
   made with previous analyses.’

   .. rubric:: Source
      :name: source

   Henderson and Velleman (1981), Building multiple regression models
   interactively. *Biometrics*, **37**, 391–411.

   .. rubric:: Examples
      :name: examples

   ::

      require(graphics)
      pairs(mtcars, main = "mtcars data", gap = 1/4)
      coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
             panel = panel.smooth, rows = 1)
      ## possibly more meaningful, e.g., for summary() or bivariate plots:
      mtcars2 <- within(mtcars, {
         vs <- factor(vs, labels = c("V", "S"))
         am <- factor(am, labels = c("automatic", "manual"))
         cyl  <- ordered(cyl)
         gear <- ordered(gear)
         carb <- ordered(carb)
      })
      summary(mtcars2)
