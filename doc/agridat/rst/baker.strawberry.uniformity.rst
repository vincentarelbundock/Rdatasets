.. container::

   .. container::

      =========================== ===============
      baker.strawberry.uniformity R Documentation
      =========================== ===============

      .. rubric:: Uniformity trial of strawberry
         :name: uniformity-trial-of-strawberry

      .. rubric:: Description
         :name: description

      Uniformity trial of strawberry

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("baker.strawberry.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 700 observations on the following 4 variables.

      ``trial``
         Factor for trial

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield per plant/plot in grams

      .. rubric:: Details
         :name: details

      Trial T1:

      200 plants were grown in two double-row beds at Davis, California,
      in 1946. The rows were 1 foot apart. The beds were 42 inches
      apart. The plants were 10 inches apart within a row, each row
      consisting of 50 plants.

      Field length: 50 plants \* 10 inches = 500 inches.

      Field width: 12 in + 42 in + 12 in = 66 inches.

      The layout of the experiment in Table 1 shows 4 columns. There is
      12 inches between column 1 and column 2, then 42 inches, then 12
      inches between column 3 and column 4. For the data in this R
      package, we added 3 to the right two columns index values to
      indicate this layout. (Should be 3.5, but we want to have an
      integer).

      Trial T2:

      500 plants were grown in single beds. The beds were 30 inches
      apart. Each bed was 50 plants long with 10 inches between plants.

      Field length: 50 plants \* 10 in = 500 in.

      Field width: 10 beds \* 30 in = 300 in.

      .. rubric:: Source
         :name: source

      G. A. Baker and R. E. Baker (1953). Strawberry Uniformity Yield
      Trials. *Biometrics*, 9, 412-421. https://doi.org/10.2307/3001713

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(baker.strawberry.uniformity)
         dat <- baker.strawberry.uniformity

         # Match mean and cv of Baker p 414.
         libs(dplyr)
         dat <- group_by(dat, trial)
         summarize(dat, mn=mean(yield), cv=sd(yield)/mean(yield))

         libs(desplot)
         desplot(dat, yield ~ col*row, subset=trial=="T1",
                 flip=TRUE, aspect=500/66, tick=TRUE,
                 main="baker.strawberry.uniformity - trial T1")
         desplot(dat, yield ~ col*row, subset=trial=="T2",
                 flip=TRUE, aspect=500/300, tick=TRUE,
                 main="baker.strawberry.uniformity - trial T2")


         ## End(Not run)
