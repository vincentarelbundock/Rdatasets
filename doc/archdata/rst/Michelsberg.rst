.. container::

   .. container::

      =========== ===============
      Michelsberg R Documentation
      =========== ===============

      .. rubric:: Younger Neolithic Pottery from Central Europe
         :name: younger-neolithic-pottery-from-central-europe

      .. rubric:: Description
         :name: description

      A sites by types table of abundance data on vessel types in
      archaeological features of the Younger Neolithic Michelsberg
      Culture from Belgium, France and Germany by Birgit Höhn (2002).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Michelsberg)

      .. rubric:: Format
         :name: format

      A data frame with 109 observations on the following 42 variables.
      Each line represents one feature. Some categorical variables are
      not converted to factors.

      ``id``
         Unique identifier (categorical, integer)

      ``site_name``
         Name of site (categorical, character)

      ``catalogue_nr``
         Number in catalogue of Höhn (2002) (categorical, integer)

      ``feature_nr``
         Number of the archaeological feature (categorical, numeric)

      ``to3``
         Pot/vessel type 3 count

      ``f4``
         Bottle type 4 count

      ``b2``
         Beaker type 2 count

      ``to2``
         Pot/vessel type 2 count

      ``b3``
         Beaker type 3 count

      ``b7``
         Beaker type 7 count

      ``kw5``
         Carinated bowl type 5 count

      ``vg1``
         Storage vessel type 1 count

      ``vg2``
         Storage vessel type 2 count

      ``t4a``
         Tulip beaker type 4a count

      ``kw2``
         Carinated bowl type 2 count

      ``kw4``
         Carinated bowl type 4 count

      ``b5``
         Beaker type 5 count

      ``t3b``
         Tulip beaker type 3b count

      ``f3``
         Bottle type 3 count

      ``kw3``
         Carinated bowl type 3 count

      ``kw1``
         Carinated bowl type 1 count

      ``b6``
         Beaker type 6 count

      ``to1``
         Pot/vessel type 1 count

      ``b1``
         Beaker type 1 count

      ``t3a``
         Tulip beaker type 3a count

      ``vg4``
         Storage vessel type 4 count

      ``ks2``
         Conical bowl type 2 count

      ``ks1``
         Conical bowl type 1 count

      ``t2b``
         Tulip beaker type 2b count

      ``f2``
         Bottle type 2 count

      ``bs3``
         Globular bowl type 3 count

      ``t2a``
         Tulip beaker type 2a count

      ``bs2``
         Globular bowl type 2 count

      ``b4``
         Beaker type 4 count

      ``bs1``
         Globular bowl type 1 count

      ``f1``
         Bottle type 1 count

      ``t1b``
         Tulip beaker type 1b count

      ``vg3``
         Storage vessel type 3 count

      ``t1a``
         Tulip beaker type 1a count

      ``mbk_phase``
         MBK phase according to Lüning (1967) as an ordered factor with
         levels ``I`` < ``I/II`` < ``II`` < ``II/III`` < ``III`` <
         ``III-V`` < ``III/IV`` < ``IV`` < ``IV/V`` < ``Munz`` < ``V``

      ``x_utm32n``
         x coordinate in m; projection UTM WGS 84, zone 32 nord

      ``y_utm32n``
         y coordinate in m; projection UTM WGS 84, zone 32 nord

      .. rubric:: Details
         :name: details

      Höhn (2002) recorded pottery vessel shapes from 108 archaeological
      features (pits, ditches etc.) from 69 sites of the Central
      European Younger Neolithic Michelsberg Culture (MBK; 4350-3500 BC)
      following Lüning's (1967) typology. Her correspondence analysis of
      the abundance data (columns 5 to 39) exhibits a pronounced Guttman
      effect or arch, suggesting the data set is structured by a time
      gradient. Recently Mischka et al. (2015) projected an 109th
      Michelsberg assemblage, Flintbek LA48, a pit with Michelsberg
      pottery from a North German site of the Funnel Beaker Culture
      (TRB), as a supplementary row into the existing chronology thereby
      connecting the relative chronologies of TRB and MBK. The data
      frame contains as attributes the references for the data, a
      typological key and the map projection. Note that ambiguous
      fragments of conical bowls (ks1 and ks2) are assigned as 0.5 to
      each of the two types resulting also in positive entries suitable
      to analysis by CA.

      .. rubric:: Source
         :name: source

      Höhn, B. 2002. *Die Michelsberger Kultur in der Wetterau.
      Universitätsforschungen zur prähistorischen Archäologie 87*. Bonn:
      Habelt.

      Mischka, D., Roth, G. and K. Struckmeyer 2015. Michelsberg and
      Oxie in contact next to the Baltic Sea. In: *Neolithic
      Diversities. Perspectives from a conference in Lund, Sweden. Acta
      Archaeologica Lundensia Ser. 8, No. 65*, edited by Kr. Brink et
      al., pp 241–250.

      Lüning, J. 1967. Die Michelsberger Kultur: Ihre Funde in
      zeitlicher und räumlicher Gliederung. *Berichte der
      Römisch-Germanischen Kommission* 48, 1-350.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         if (requireNamespace("ca", quietly = TRUE)) {
         data(Michelsberg)
         str(Michelsberg)
         names(Michelsberg)[5:39]
         attributes(Michelsberg)$typological_key

         # geographical distribution
         xy <- as.matrix(Michelsberg[,41:42])/1000
         plot(xy, asp=1, pch=16, col=rgb(.3,.3,.3,.5))
         text(xy[,1], xy[,2], Michelsberg$id, cex=.7, pos=2)
         # Note site 109 to the Northeast; 

         # preparing the data set for CA
         abu <- Michelsberg[, 5:39]
         rownames(abu) <- Michelsberg$id

         # CA with site 109, Flintbek LA48, as supplementary row
         MBK.ca <- ca::ca(abu, ndim=min(dim(abu)-1), suprow=109 )

         # asymmetric biplot with row quality and column contribution
         plot(MBK.ca, map="rowprincipal", contrib=c("relative", "absolute"))

         title(main="Row-isometric Biplot of Michelsberg CA", cex.sub=.7, 
              sub="color intensity represents quality for sites and contributions for types")
         } else {
           cat("This example requires package ca to run.\n")
         }
