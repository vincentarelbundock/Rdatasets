.. container::

   .. container::

      ======= ===============
      Mammals R Documentation
      ======= ===============

      .. rubric:: Garland(1983) Data on Running Speed of Mammals
         :name: garland1983-data-on-running-speed-of-mammals

      .. rubric:: Description
         :name: description

      Observations on the maximal running speed of mammal species and
      their body mass.

      .. rubric:: Usage
         :name: usage

      ::

         data(Mammals)

      .. rubric:: Format
         :name: format

      A data frame with 107 observations on the following 4 variables.

      weight
         Body mass in Kg for "typical adult sizes"

      speed
         Maximal running speed (fastest sprint velocity on record)

      hoppers
         logical variable indicating animals that ambulate by hopping,
         e.g. kangaroos

      specials
         logical variable indicating special animals with "lifestyles in
         which speed does not figure as an important factor":
         Hippopotamus, raccoon (Procyon), badger (Meles), coati (Nasua),
         skunk (Mephitis), man (Homo), porcupine (Erithizon), oppossum
         (didelphis), and sloth (Bradypus)

      .. rubric:: Details
         :name: details

      Used by Chappell (1989) and Koenker, Ng and Portnoy (1994) to
      illustrate the fitting of piecewise linear curves.

      .. rubric:: Source
         :name: source

      Garland, T. (1983) The relation between maximal running speed and
      body mass in terrestrial mammals, *J. Zoology*, 199, 1557-1570.

      .. rubric:: References
         :name: references

      Koenker, R., P. Ng and S. Portnoy, (1994) Quantile Smoothing
      Splines” *Biometrika*, 81, 673-680.

      Chappell, R. (1989) Fitting Bent Lines to Data, with Applications
      ot Allometry, *J. Theo. Biology*, 138, 235-256.

      .. rubric:: See Also
         :name: see-also

      ``rqss``

      .. rubric:: Examples
         :name: examples

      ::

         data(Mammals)
         attach(Mammals)
         x <- log(weight)
         y <- log(speed)
         plot(x,y, xlab="Weight in log(Kg)", ylab="Speed in log(Km/hour)",type="n")
         points(x[hoppers],y[hoppers],pch = "h", col="red")
         points(x[specials],y[specials],pch = "s", col="blue")
         others <- (!hoppers & !specials)
         points(x[others],y[others], col="black",cex = .75)
         fit <- rqss(y ~ qss(x, lambda = 1),tau = .9)
         plot(fit)
