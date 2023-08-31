.. container::

   ========== ===============
   radarImage R Documentation
   ========== ===============

   .. rubric:: Satellite Radar Image Data from near Munich
      :name: radarImage

   .. rubric:: Description
      :name: description

   The data were supplied by A. Frery. They are a part of a synthetic
   aperture satellite radar image corresponding to a suburb of Munich.
   Provided are coordinates and values corresponding to three frequency
   bands for each of 1573 pixels.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(radarImage, package="robustbase")

   .. rubric:: Format
      :name: format

   A data frame with 1573 observations on the following 5 variables.

   ``X.coord``
      a numeric vector

   ``Y.coord``
      a numeric vector

   ``Band.1``
      a numeric vector

   ``Band.2``
      a numeric vector

   ``Band.3``
      a numeric vector

   .. rubric:: Source
      :name: source

   The website accompanying the MMY-book:
   https://www.wiley.com/legacy/wileychi/robust_statistics/

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(radarImage)
      plot(Y.coord ~ X.coord, data = radarImage)

      ## The 8 "clear" outliers (see also below)
      ii8 <- c(1548:1549, 1553:1554, 1565:1566, 1570:1571)
      outF <- 1+(seq_len(nrow(radarImage)) %in% ii8)
      pairs(radarImage[, 3:5], main = "radarImage (n = 1573)",
            col = outF, pch=outF)

      ## Finding outliers -----------------------------------------

      set.seed(1)
      system.time(cc.ri <- covMcd(radarImage))# ~ 0.1 sec
      ## check for covMcd() consistency:
      iiO <- as.integer(
       c(262, 450:451, 480:481, 509, 535, 542, 597, 643, 669, 697, 803:804, 832:834,
         862:864, 892, 989, 1123, 1145, 1223:1224, 1232:1233, 1249:1250, 1267, 1303,
         1347, 1357, 1375, 1411, 1419:1420, 1443, 1453, 1504, 1510:1512,
         1518:1521, 1525:1526, 1543:1544, 1546:1555, 1557:1558, 1561:1562, 1564:1566,
         1569:1571, 1573))
      length(iiO) # 73 -- other seeds sometimes give 72, rarely 71 "outliers"
      isO <- cc.ri$mcd.wt == 0
      stopifnot(identical(iiO, which(isO)),
                identical(ii8, which(cc.ri$mah > 100)),
                length(intersect(cc.ri$best, iiO)) == 0)

      cc <- c(adjustcolor("black", 0.4), adjustcolor("tomato", 0.8))
      pairs(radarImage, main = "radarImage (n = 1573) + Outliers", gap=0,
            col = cc[1+isO], pch = c(1,8)[1+isO], cex = 0.8)
