.. container::

   .. container::

      ===== ===============
      hills R Documentation
      ===== ===============

      .. rubric:: Scottish Hill Races Data
         :name: scottish-hill-races-data

      .. rubric:: Description
         :name: description

      The record times in 1984 (``hills``) for 35 Scottish hill races,
      or in 2000 (``hills2000``) for 56 hill races. The ``hills2000``
      dataset is the subset of ``races2000`` for which ``type`` is
      ``hill``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

           data(hills)
           data(hills2000)
           

      .. rubric:: Format
         :name: format

      dist
         distance, in miles (on the map)

      climb
         total height gained during the route, in feet

      time
         record time in hours

      timef
         record time in hours for females, in the ``hills2000`` dataset.

      .. rubric:: Source
         :name: source

      A.C. Atkinson (1986) Comment: Aspects of diagnostic regression
      analysis. Statistical Science 1, 397-402.

      Also, in MASS library, with time in minutes.

      The Scottish Running Resource, http://www.hillrunning.co.uk

      .. rubric:: References
         :name: references

      A.C. Atkinson (1988) Transformations unmasked. Technometrics 30,
      311-318. [ "corrects" the time for Knock Hill, in the ``hills``
      dataset, from 78.65 to 18.65. It is unclear if this based on the
      original records.]

      .. rubric:: Examples
         :name: examples

      .. code:: R

         print("Transformation - Example 6.4.3")
         pairs(hills, labels=c("dist\n\n(miles)", "climb\n\n(feet)", 
         "time\n\n(hours)"))
         pause()

         pairs(log(hills), labels=c("dist\n\n(log(miles))", "climb\n\n(log(feet))",
           "time\n\n(log(hours))"))
         pause()

         hills0.loglm <- lm(log(time) ~ log(dist) + log(climb), data = hills)  
         oldpar <- par(mfrow=c(2,2))
         plot(hills0.loglm)
         pause()


         hills.loglm <- lm(log(time) ~ log(dist) + log(climb), data = hills[-18,])
         summary(hills.loglm) 
         plot(hills.loglm)
         pause()

         hills2.loglm <- lm(log(time) ~ log(dist)+log(climb)+log(dist):log(climb), 
         data=hills[-18,])
         anova(hills.loglm, hills2.loglm)
         pause()

         step(hills2.loglm)
         pause()

         summary(hills.loglm, corr=TRUE)$coef
         pause()

         summary(hills2.loglm, corr=TRUE)$coef
         par(oldpar)
         pause()

         print("Nonlinear - Example 6.9.4")
         hills.nls0 <- nls(time ~ (dist^alpha)*(climb^beta), start =
            c(alpha = .909, beta = .260), data = hills[-18,])
         summary(hills.nls0)
         plot(residuals(hills.nls0) ~ predict(hills.nls0)) # residual plot
         pause()

         hills$climb.mi <- hills$climb/5280
         hills.nls <- nls(time ~ alpha + beta*dist + gamma*(climb.mi^delta),
           start=c(alpha = 1, beta = 1, gamma = 1, delta = 1), data=hills[-18,])
         summary(hills.nls)
         plot(residuals(hills.nls) ~ predict(hills.nls)) # residual plot
