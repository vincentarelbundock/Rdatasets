.. container::

   ====== ===============
   IMSCOL R Documentation
   ====== ===============

   .. rubric:: Introduction to Modern Statistics (IMS) Colors
      :name: introduction-to-modern-statistics-ims-colors

   .. rubric:: Description
      :name: description

   These are the core colors used for the Introduction to Modern
   Statistics textbook. The blue, green, pink, yellow, and red colors
   are also gray-scaled, meaning no changes are required when printing
   black and white copies.

   .. rubric:: Usage
      :name: usage

   ::

      IMSCOL

   .. rubric:: Format
      :name: format

   A ``8-by-13`` matrix of 7 colors with four fading scales: blue,
   green, pink, yellow, red, black, gray, and light gray.

   .. rubric:: Examples
      :name: examples

   ::


      plot(1:7, 7:1, col=IMSCOL, pch=19, cex=6, xlab="", ylab="",
           xlim=c(0.5,7.5), ylim=c(-2.5,8), axes=FALSE)
      text(1:7, 7:1+0.7, paste("IMSCOL[", 1:7, "]", sep=""), cex=0.9)
      points(1:7, 7:1-0.7, col=IMSCOL[,2], pch=19, cex=6)
      points(1:7, 7:1-1.4, col=IMSCOL[,3], pch=19, cex=6)
      points(1:7, 7:1-2.1, col=IMSCOL[,4], pch=19, cex=6)

