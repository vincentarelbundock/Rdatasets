.. container::

   .. container::

      ======= ===============
      Fibulae R Documentation
      ======= ===============

      .. rubric:: Bronze La Tene fibulae from Munsingen, Switzerland
         :name: bronze-la-tene-fibulae-from-munsingen-switzerland

      .. rubric:: Description
         :name: description

      The La Tène fibulae from the Iron Age cemetery of Münsingen near
      Berne, Switzerland (100 - 500 BCE) described by F. R. Hodson
      (1968).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("Fibulae")

      .. rubric:: Format
         :name: format

      A data frame with 30 observations on the following 16 variables.

      ``Grave``
         Grave number

      ``Mno``
         Museum number

      ``FL``
         Foot Length

      ``BH``
         Bow Height

      ``BFA``
         Bow Front Angle

      ``FA``
         Foot Angle

      ``CD``
         Coil Diameter

      ``BRA``
         Bow Rear Angle

      ``ED``
         Element Diameter

      ``FEL``
         Foot Extension Length

      ``C``
         Catchplate

      ``BW``
         Bow Width

      ``BT``
         Bow Thickness

      ``FEW``
         Foot Extension Width

      ``Coils``
         Number of Coils

      ``Length``
         Total Length

      .. rubric:: Details
         :name: details

      The La Tène fibulae from the Iron Age cemetery of Münsingen near
      Berne, Switzerland were reported by F. R. Hodson (1968). They were
      featured in several papers by Hodson over the years and used to
      illustrate a variety of multivariate statistical techniques. The
      data here were taken from Doran and Hodson (1975), Table 9.1.
      These are the raw measurements including 5 missing values in foot
      extension thickness and 1 in foot extension length.

      .. rubric:: Source
         :name: source

      Doran, J. E. and F. R. Hodson. 1975. *Mathematics and Computers in
      Archaeology*. Harvard University Press, Cambridge, Massachusetts.

      Hodson, F. R. 1968. *The La Tène Cemetery at Műnsingen-Rain*.
      Stampfli, Berne.

      .. rubric:: References
         :name: references

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 88-91, 95-99, 103-109, 127-129,
      132-138, 162-169.

      Hodson, F. R., P. H. A. Sneath, J. E. Doran. 1966. Some
      Experiments in the Numerical Analysis of Archaeological Data.
      *Biometrika* 53: 311-324.

      Hodson, F. R. 1969. Searching for Structure within Multivariate
      Archaeological Data. *World Archaeology* 1: 90-105.

      Hodson, F. R. 1970. Cluster Analysis and Archaeology: some New
      Developments and Applications. *World Archaeology* 1: 299-320.

      Hodson, F. R. 1971. Numerical Typology and Prehistoric
      Archaeology. In *Mathematics int eh Archaeological and Historical
      Sciences*, edited by F. R. Hodson, D. G. Kendall and P. Tautu, pp
      30-45. Edinburgh University Press, Edinburgh.

      Sneath, P. H. A. 1968. Goodness of Intuitive Arrangements into
      Time Trends Based on Complex Pattern. *Systematic Zoology* 17:
      256-260.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Fibulae)
         t(sapply(Fibulae[, 3:16], quantile, na.rm=TRUE))
         plot(density(Fibulae$Length, bw="SJ"), main="Kernel Density Plot of Length")
