.. container::

   .. container::

      ================ ===============
      moore.uniformity R Documentation
      ================ ===============

      .. rubric:: Uniformity trials of pole beans, bush beans, sweet
         corn, carrots, spring and fall cauliflower
         :name: uniformity-trials-of-pole-beans-bush-beans-sweet-corn-carrots-spring-and-fall-cauliflower

      .. rubric:: Description
         :name: description

      Uniformity trials of pole beans, bush beans, sweet corn, carrots,
      spring and fall cauliflower at Washington, 1952-1955.

      .. rubric:: Format
         :name: format

      Each data frame has the following columns at a minimum. Some
      datasets have an additional trait column.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield (pounds)

      .. rubric:: Details
         :name: details

      All trials were grown on sandy loam soil in the Puyallup valley of
      Washington. In most experiments a gradient in soil fertility was
      evident. Moore & Darroch appear to have assigned 4 treatments to
      the plots and used the residual variation to calculate a CV. In
      the examples below a 'raw' CV is calculated and is always higher
      than the CV given by Moore & Darroch.

      **Blue Lake Pole Beans**.

      Conducted 1952. Seven pickings were made at about 5-day intervals.
      Table 26.

      Field width: 12 rows x 5 feet = 60 feet.

      Field length: 12 ranges x 10 feet = 120 feet.

      **Bush Beans**.

      Conducted in 1955. Two harvests. Table 27.

      Field width: 24 rows x 3 feet = 72 feet.

      Field length: 24 ranges x 5 feet = 120 feet.

      **Sweet Corn**.

      Conducted 1952. Table 28-29.

      Field width: 24 rows x 3 feet = 72 feet.

      Field length: 12 ranges x 10 feet = 120 feet.

      **Carrot**.

      Conducted 1952. Table 30.

      Field width: 24 rows \* 1.5 feet = 36 feet.

      Field length: 12 ranges \* 5 feet = 60 feet.

      **Spring Cauliflower**.

      Conducted spring 1951. Five harvests. Table 31-32.

      Field width: 12 rows x 3 feet = 36 feet.

      Field length: 10 plants \* 1.5 feet \* 20 ranges = 300 feet.

      **Fall Cauliflower**.

      Conducted fall 1951. Five harvests. Table 33-34.

      Field width: 12 rows x 3 feet = 36 feet.

      Field length: 10 plants \* 1.5 feet \* 20 ranges = 300 feet.

      .. rubric:: Source
         :name: source

      Moore, John F and Darroch, JG. (1956). Field plot technique with
      Blue Lake pole beans, bush beans, carrots, sweet corn, spring and
      fall cauliflower, page 25-30. Washington Agricultural Experiment
      Stations, Institute of Agricultural Sciences, State College of
      Washington.
      https://babel.hathitrust.org/cgi/pt?id=uiug.30112019919072&view=1up&seq=33&skin=2021

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           
           cv <- function(x) sd(x)/mean(x)

           libs(desplot)
           
           # Pole Bean
           data(moore.polebean.uniformity)
           cv(moore.polebean.uniformity$yield) # 8.00. Moore says 6.73.
           desplot(moore.polebean.uniformity, yield~col*row,
                   flip=TRUE, tick=TRUE, aspect=120/60, # true aspect
                   main="moore.polebean.uniformity - yield")

           # Bush bean
           data(moore.bushbean.uniformity)
           cv(moore.bushbean.uniformity$yield) # 12.1. Moore says 10.8
           desplot(moore.bushbean.uniformity, yield~col*row,
                   flip=TRUE, tick=TRUE, aspect=120/72, # true aspect
                   main="moore.bushbean.uniformity - yield")

           # Sweet corn
           data(moore.sweetcorn.uniformity)
           cv(moore.sweetcorn.uniformity$yield) # 17.5. Moore says 13.6
           desplot(moore.sweetcorn.uniformity, yield~col*row,
                   flip=TRUE, tick=TRUE, aspect=120/72, # true aspect
                   main="moore.sweetcorn.uniformity - yield")
           ## desplot(moore.sweetcorn.uniformity, ears~col*row,
           ##         flip=TRUE, tick=TRUE, aspect=120/72, # true aspect
           ##         main="moore.sweetcorn.uniformity - ears")
           ## libs(lattice)
           ## xyplot(yield ~ ears, moore.sweetcorn.uniformity)
           
           libs(desplot)
           # Carrot
           data(moore.carrot.uniformity)
           cv(moore.carrot.uniformity$yield) # 33.4. Moore says 27.6
           desplot(moore.carrot.uniformity, yield~col*row,
                   flip=TRUE, tick=TRUE, aspect=60/36, # true aspect
                   main="moore.carrot.uniformity - yield")

           libs(desplot)
           # Spring cauliflower
           data(moore.springcauliflower.uniformity)
           cv(moore.springcauliflower.uniformity$yield) # 21. Moore says 19.5
           desplot(moore.springcauliflower.uniformity, yield~col*row,
                   flip=TRUE, tick=TRUE, aspect=300/36, # true aspect
                   main="moore.springcauliflower.uniformity - yield")
           ## desplot(moore.springcauliflower.uniformity, heads~col*row, 
           ##         flip=TRUE, tick=TRUE, aspect=300/36, # true aspect
           ##         main="moore.springcauliflower.uniformity - heads")
           ## libs(lattice)
           ## xyplot(yield ~ heads, moore.springcauliflower.uniformity)

           libs(desplot)
           # Fall cauliflower
           data(moore.fallcauliflower.uniformity)
           cv(moore.fallcauliflower.uniformity$yield) # 17.7. Moore says 17.0
           desplot(moore.fallcauliflower.uniformity, yield~col*row, 
                   flip=TRUE, tick=TRUE, aspect=300/36, # true aspect
                   main="moore.fallcauliflower.uniformity - yield")
           ## desplot(moore.fallcauliflower.uniformity, heads~col*row, 
           ##         flip=TRUE, tick=TRUE, aspect=300/36, # true aspect
           ##         main="moore.fallcauliflower.uniformity - heads")
           ## libs(lattice)
           ## xyplot(yield ~ heads, moore.fallcauliflower.uniformity)
           

         ## End(Not run)
