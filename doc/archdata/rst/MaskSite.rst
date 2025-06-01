.. container::

   .. container::

      ======== ===============
      MaskSite R Documentation
      ======== ===============

      .. rubric:: Mask Site, Alaska, USA
         :name: mask-site-alaska-usa

      .. rubric:: Description
         :name: description

      The distribution of five categories of artifacts at the Mask site,
      occupied by the Nunamiut (Binford 1978a).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("MaskSite")

      .. rubric:: Format
         :name: format

      A data frame with 494 observations on the following 3 variables.

      ``X``
         horizontal coordinate

      ``Y``
         vertical coordinate

      ``Category``
         a factor with levels ``Artifacts``, ``Spent Cartridges``,
         ``Wood Shavings``, ``Bone Splinters``, and ``Large Bones``

      .. rubric:: Details
         :name: details

      The Mask Site was reported by Binford (1978a) as an example of a
      hunting stand where Nunamiut men watched for game as part of a
      larger ethnoarchaeological study of the Nunamiut (Binford 1978b).
      The data from the site have been widely used to illustrate the
      utility of various methods of intra site spatial analysis
      (including Baxter 2003, Blankholm 1991, Kintigh 1990, and Whallon
      1984). The data consist of 494 locations of five different classes
      (artifacts, spent cartridges, wood shavings, bone splinters, and
      large bones). The data were scanned from Appendix A (Blankholm
      1991).

      .. rubric:: Source
         :name: source

      Binford, L. R. 1978a. Dimensional Analysis of Behavior and Site
      Structure: Learning from an Eskimo Hunting Stand. *American
      Antiquity* 43: 330 - 361.

      Blankholm, Hans Peter. 1991. *Intrasite Spatial Analysis in Theory
      and Practice*. Aarhus University Press.

      .. rubric:: References
         :name: references

      Baxter, M. 2003. *Statistics in Archaeology*. Arnold Applications
      in Statistics.

      Binford, L. R. 1978b. Nunamiut Ethnoarchaeology. Academic Press.

      Kintigh, K. 1990. Intrasite Spatial Analysis: A Commentary on
      Major Methods. In *Mathematics and Information Science in
      Archaeology: A Flexible Framework*, edited by A. Voorrips, pp
      165-200. Studies in Modern Archaeology 3. Holos.

      Whallon, R. 1984. Unconstrained Clustering for the Analysis of
      Spatial Distributions in Archaeology. In *Intrasite Spatial
      Analysis in Archaeology*, edited by H. Hietala, pp 242 - 277.
      Cambridge University Press.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(MaskSite)
         plot(Y~X, MaskSite, main="Mask Site", asp=1, pch=as.numeric(Category), cex=.75)
         legend("bottomright", levels(MaskSite$Category), pch=1:5)
