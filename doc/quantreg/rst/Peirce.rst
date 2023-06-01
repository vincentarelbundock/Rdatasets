.. container::

   ====== ===============
   Peirce R Documentation
   ====== ===============

   .. rubric:: C.S. Peirce's Auditory Response Data
      :name: Peirce

   .. rubric:: Description
      :name: description

   Data from sequence experiments conducted by C.S. Pierce in 1872 to
   determine the distribution of response times to an auditory stimulus.

   .. rubric:: Usage
      :name: usage

   ::

      data(Peirce)

   .. rubric:: Format
      :name: format

   A ``link{list}`` of 24 objects each representing one day of the
   experiment. Each element of the list consists of three components:
   the date the measurements were made, an ``x`` component recording the
   response time in milliseconds, and an associated ``y`` component
   recording a count of the number of times that the response was
   recorded to be equal to be equal to the corresponding ``x`` entry.
   There are roughly 500 observations (counts) on each of the 24 days.

   .. rubric:: Details
      :name: details

   A detailed description of the experiment can be found in Peirce
   (1873). A young man of about 18 with no prior experience was employed
   to respond to a signal “consisting of a sharp sound like a rap, the
   answer being made upon a telegraph-operator's key nicely adjusted.”
   The response times, made with the aid of a Hipp cronoscope were
   recorded to the nearest millisecond. The data was analyzed by Peirce
   who concluded that after the first day, when the the observer was
   entirely inexperienced, the curves representing the densities of the
   response times “differed very little from that derived from the
   theory of least squares,” i.e. from the Gaussian density.

   The data was subsequently analysed by Samama, in a diploma thesis
   supervised by Maurice Frechet, who reported briefly the findings in
   Frechet (1924), and by Wilson and Hilferty (1929). In both instances
   the reanalysis showed that Laplace's first law of error, the double
   exponential distribution, was a better representation for the data
   than was the Gaussian law. Koenker (2009) constains further
   discussion and an attempt to reproduce the Wilson and Hilferty
   analysis.

   The data is available in two formats: The first in a "raw" form as 24
   text files as scanned from the reprinted Peirce source, the second as
   an R dataset ``Peirce.rda`` containing the list. Only the latter is
   provided here, for the raw data and how to read see the more complete
   archive at:
   http://www.econ.uiuc.edu/~roger/research/frechet/frechet.html See the
   examples section below for some details on provisional attempt to
   reproduce part of the Wilson and Hilferty analysis. An open question
   regarding the dataset is: How did Wilson and Hilferty compute
   standard deviations for the median as they appear in their table? The
   standard textbook suggestion of Yule (1917) yields far too small a
   bandwidth. The methods employed in the example section below, which
   rely on relatively recent proposals, are somewhat closer, but still
   deviate somewhat from the results reported by Wilson and Hilferty.

   .. rubric:: Source
      :name: source

   Peirce, C.~S. (1873): “On the Theory of Errors of Observation,”
   *Report of the Superintendent of the U.S. Coast Survey*, pp. 200–224,
   Reprinted in *The New Elements of Mathematics*, (1976) collected
   papers of C.S. Peirce, ed. by C. Eisele, Humanities Press: Atlantic
   Highlands, N.J., vol. 3, part 1, 639–676.

   .. rubric:: References
      :name: references

   Fr\'echet, M. (1924): “Sur la loi des erreurs d'observation,”
   *Matematichiskii Sbornik*, 32, 5–8. Koenker, R. (2009): “The Median
   is the Message: Wilson and Hilferty's Reanalysis of C.S. Peirce's
   Experiments on the Law of Errors,” *American Statistician*, 63,
   20-25. Wilson, E.~B., and M.~M. Hilferty (1929): “Note on C.S.
   Peirces Experimental Discussion of the Law of Errors,” *Proceedings
   of the National Academy of Sciences of the U.S.A.*, 15, 120–125.
   Yule, G.~U. (1917): *An Introduction to the Theory of Statistics*.
   Charles Griffen: London, 4 edn.

   .. rubric:: Examples
      :name: examples

   ::

      # Make table like Wilson and Hilferty

      data("Peirce")
      set.seed(10) #Dither the counts
      tab <- matrix(0,24,11)
      for(i in 1:24){
          y <- rep(Peirce[[i]]$x, Peirce[[i]]$y) + runif(sum(Peirce[[i]]$y), -.5, .5)
          f1 <- summary(rq(y~1),se="iid")$coef[1:2]
          n <- length(y)
          f0 <- 1/(2 * sum(abs(y-f1[1])/n)) #Laplace proposal
          f0 <- (1/(2 * f0))/ sqrt(n)
          f2 <- summary(lm(y~1))$coef[1:2]
          outm <- sum(y < (f1[1] - 3.1 * sqrt(n) * f2[2]))
          outp <- sum(y > (f1[1] + 3.1 * sqrt(n) * f2[2]))
          outt <- outm + outp
          inm <- y > (f1[1] - 0.25 * sqrt(n) * f2[2])
          inp <- y < (f1[1] + 0.25 * sqrt(n) * f2[2])
          int <- sum(inm * inp)
          Eint <- round(n * (pnorm(.25) - pnorm(-.25)))
          excess <- round(100*(int - Eint)/Eint)
          tab[i,] <- c(f1, f0, f2, outm, outp, outt,int,Eint,excess)
          cnames <- c("med","sdmed1","sdmed0","mean","sdmean","below","above","outliers",
              "inliers","Einliers","ExcessIns")
          dimnames(tab) <- list(paste("Day",1:24),cnames)
          }
