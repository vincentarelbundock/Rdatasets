.. container::

   .. container::

      ========= ===============
      patentsrd R Documentation
      ========= ===============

      .. rubric:: Patents and R&D
         :name: patents-and-rd

      .. rubric:: Description
         :name: description

      Panel data on patents and R&D expenditures. The sample includes
      346 firms with five years of data from 1975 to 1979 used by Hall,
      Griliches, and Hausman (1986).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         patentsrd

      .. rubric:: Format
         :name: format

      A data frame with 346 observations and 25 variables:

      cusip
         Compustat's identifying number for the firm (Committee on
         Uniform Security Identification Procedures number).

      ardssic
         A two-digit code for the applied R&D industrial classification.

      scisect
         = 1 if firm is in the scientific sector.

      logk
         log of the book value of capital in 1972.

      sumpat
         sum of patents applied for between 1972-1979.

      logr70
         log of R&D spending in 1970, in 1972 dollars.

      logr71
         log of R&D spending in 1971, in 1972 dollars.

      logr72
         log of R&D spending in 1972, in 1972 dollars.

      logr73
         log of R&D spending in 1973, in 1972 dollars.

      logr74
         log of R&D spending in 1974, in 1972 dollars.

      logr75
         log of R&D spending in 1975, in 1972 dollars.

      logr76
         log of R&D spending in 1976, in 1972 dollars.

      logr77
         log of R&D spending in 1977, in 1972 dollars.

      logr78
         log of R&D spending in 1978, in 1972 dollars.

      logr79
         log of R&D spending in 1979, in 1972 dollars.

      pat70
         number of patents applied in the year that were eventually
         granted (1970).

      pat71
         number of patents applied in the year that were eventually
         granted (1971).

      pat72
         number of patents applied in the year that were eventually
         granted (1972).

      pat73
         number of patents applied in the year that were eventually
         granted (1973).

      pat74
         number of patents applied in the year that were eventually
         granted (1974).

      pat75
         number of patents applied in the year that were eventually
         granted (1975).

      pat76
         number of patents applied in the year that were eventually
         granted (1976).

      pat77
         number of patents applied in the year that were eventually
         granted (1977).

      pat78
         number of patents applied in the year that were eventually
         granted (1978).

      pat79
         number of patents applied in the year that were eventually
         granted (1979).

      .. rubric:: Section in Text
         :name: section-in-text

      23.3 Nonlinear Panel Example: Patents and R&D, pp. 792-5

      .. rubric:: Source
         :name: source

      http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

      .. rubric:: References
         :name: references

      Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods
      and Applications," Cambridge University Press, New York.

      Hall, B., Griliches, Z. and Hausman J. (1986), "Patents and R and
      D: Is There a Lag?," International Economic Review, 27, issue 2,
      p. 265-83.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(patentsrd)
