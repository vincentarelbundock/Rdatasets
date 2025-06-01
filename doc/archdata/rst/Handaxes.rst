.. container::

   .. container::

      ======== ===============
      Handaxes R Documentation
      ======== ===============

      .. rubric:: Lower Paleolithic handaxes from Furze Platt,
         Maidenhead, Berkshire, England
         :name: lower-paleolithic-handaxes-from-furze-platt-maidenhead-berkshire-england

      .. rubric:: Description
         :name: description

      Handaxes from the Furze Platt site stored at the Royal Ontario
      Museum.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Handaxes)

      .. rubric:: Format
         :name: format

      A data frame with 600 observations on the following 8 variables.

      ``Catalog``
         Specimen catalog number

      ``L``
         Maximum Length

      ``L1``
         Distance from the butt to the location of the maximum breadth
         measured along the length dimension

      ``B``
         Maximum breadth

      ``B1``
         Breadth measured at 1/5 of the length from the tip. Measured
         perpendicular to the length

      ``B2``
         Breadth measured at 1/5 of the length from the butt. Measured
         perpendicular to the length

      ``T``
         Maximum thickness, not necessarily measured at the maximum
         breadth

      ``T1``
         Thickness measured at B1

      .. rubric:: Details
         :name: details

      The data consist of measurements on 600 handaxes from the Furze
      Platt site stored at the Royal Ontario Museum that were measured
      by William Fox. The measurements follow the system used by Derek
      Roe (Roe 1964, 1968, 1981). Fox's measurements were digitized by
      Tony Baker and uploaded to his website.

      .. rubric:: Source
         :name: source

      Fox, William and Tony Baker. 2006. Dimensions of 600 Acheulean
      Handaxes from Furze Platt, Maidenhead, Berkshire, England.
      Archived at
      https://web.archive.org/web/20080515113522/http://www.ele.net/acheulean/FPatROM.htm.
      11 Accessed January 2021.

      .. rubric:: References
         :name: references

      Baker, Tony. 2006. The Acheulean Handaxe. Archived article
      available at
      https://web.archive.org/web/20080831233847/http://www.ele.net:80/acheulean/handaxe.htm.
      Accessed 11 January 2021.

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 221-231, 269-277, 321-330.

      Fox, William. 1969. An Analysis of the R. O. M. Collection, Lower
      Paleolithic Implements: Furze Platt, Maidenhead, Berkshire,
      England. Unpublished paper and notes in the possession of the
      author.

      Roe, D. A. 1964. The British Lower and Middle Paleolithic: some
      problems, methods of study and preliminary results. *Proceedings
      of the Prehistoric Society* 30: 245–267.

      Roe, D. A. 1968. British Lower and Middle Paleolithic Handaxe
      groups. *Proceedings of the Prehistoric Society* 34: 1–82.

      Roe, D. A. 1981. *The Lower and Middle Paleolithic Periods in
      Britain*. Routledge.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Handaxes)
         summary(Handaxes)
