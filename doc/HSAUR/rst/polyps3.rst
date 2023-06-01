.. container::

   ======= ===============
   polyps3 R Documentation
   ======= ===============

   .. rubric:: Familial Andenomatous Polyposis
      :name: polyps3

   .. rubric:: Description
      :name: description

   Data from a placebo-controlled trial of a non-steroidal
   anti-inflammatory drug in the treatment of familial andenomatous
   polyposis (FAP).

   .. rubric:: Usage
      :name: usage

   ::

      data("polyps3")

   .. rubric:: Format
      :name: format

   A data frame with 22 observations on the following 5 variables.

   ``sex``
      a factor with levels ``female`` and ``male``.

   ``treatment``
      a factor with levels ``placebo`` and ``active``.

   ``baseline``
      the baseline number of polyps.

   ``age``
      the age of the patient.

   ``number3m``
      the number of polyps after three month.

   .. rubric:: Details
      :name: details

   The data arise from the same study as the ``polyps`` data. Here, the
   number of polyps after three months are given.

   .. rubric:: Source
      :name: source

   F. M. Giardiello, S. R. Hamilton, A. J. Krush, S. Piantadosi, L. M.
   Hylind, P. Celano, S. V. Booker, C. R. Robinson and G. J. A.
   Offerhaus (1993), Treatment of colonic and rectal adenomas with
   sulindac in familial adenomatous polyposis. *New England Journal of
   Medicine*, **328**\ (18), 1313–1316.

   S. Piantadosi (1997), *Clinical Trials: A Methodologic Perspective*.
   John Wiley & Sons, New York.

   .. rubric:: Examples
      :name: examples

   ::

        data("polyps3", package = "HSAUR")
        plot(number3m ~ age, data = polyps3, pch = as.numeric(polyps3$treatment))
        legend("topright", legend = levels(polyps3$treatment), pch = 1:2, bty = "n")
