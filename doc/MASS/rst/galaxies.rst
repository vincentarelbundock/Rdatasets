.. container::

   .. container::

      ======== ===============
      galaxies R Documentation
      ======== ===============

      .. rubric:: Velocities for 82 Galaxies
         :name: velocities-for-82-galaxies

      .. rubric:: Description
         :name: description

      A numeric vector of velocities in km/sec of 82 galaxies from 6
      well-separated conic sections of an ``unfilled`` survey of the
      Corona Borealis region. Multimodality in such surveys is evidence
      for voids and superclusters in the far universe.

      .. rubric:: Usage
         :name: usage

      ::

         galaxies

      .. rubric:: Note
         :name: note

      There is an 83rd measurement of 5607 km/sec in the Postman *et
      al.* paper which is omitted in Roeder (1990) and from the dataset
      here.

      There is also a typo: this dataset has 78th observation 26690
      which should be 26960.

      .. rubric:: Source
         :name: source

      Roeder, K. (1990) Density estimation with confidence sets
      exemplified by superclusters and voids in galaxies. *Journal of
      the American Statistical Association* **85**, 617–624.

      Postman, M., Huchra, J. P. and Geller, M. J. (1986) Probes of
      large-scale structures in the Corona Borealis region.
      *Astronomical Journal* **92**, 1238–1247.

      .. rubric:: References
         :name: references

      Venables, W. N. and Ripley, B. D. (2002) *Modern Applied
      Statistics with S.* Fourth edition. Springer.

      .. rubric:: Examples
         :name: examples

      ::

         gal <- galaxies/1000
         c(width.SJ(gal, method = "dpi"), width.SJ(gal))
         plot(x = c(0, 40), y = c(0, 0.3), type = "n", bty = "l",
              xlab = "velocity of galaxy (1000km/s)", ylab = "density")
         rug(gal)
         lines(density(gal, width = 3.25, n = 200), lty = 1)
         lines(density(gal, width = 2.56, n = 200), lty = 3)
