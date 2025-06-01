.. container::

   .. container::

      ======== ===============
      ESASites R Documentation
      ======== ===============

      .. rubric:: Early Stone Age Sites - Norway
         :name: early-stone-age-sites---norway

      .. rubric:: Description
         :name: description

      Data on 43 Early Stone Age assemblages in Norway come originally
      from Bølviken et al (1982).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("ESASites")

      .. rubric:: Format
         :name: format

      A data frame with 43 observations on the following 16 variables.

      ``TA``
         Tanged Arrows

      ``BA``
         Blade Arrows

      ``TOA``
         Transverse and Oblique Arrows

      ``AA``
         Atypical Arrows

      ``M``
         Microliths

      ``FK``
         Flake Knives

      ``BK``
         Blade Knives

      ``NK``
         Notched Knives

      ``CFS``
         Core and Flake Scrapers

      ``BS``
         Blade Scrapers

      ``DS``
         Disc Scrapers

      ``Bu``
         Burins

      ``Ax``
         Axes

      ``Ch``
         Chisels

      ``SAx``
         Slate Axes

      ``Pf``
         Perforators

      .. rubric:: Details
         :name: details

      Data on 43 Early Stone Age (8000 - 4000 BCE) assemblages in Norway
      come originally from Bølviken et al (1982). The data were scanned
      from Table A5 (Appendix A) in Baxter (1994).

      .. rubric:: Source
         :name: source

      Baxter, M. J. 1994. *Exploratory Multivariate Analysis in
      Archaeology*. Edinburgh University Press. Edinburgh.

      Bølviken, E., E. Helskog, K. Helskog, I. M. Holm-Olsen, L.
      Solheim, and R. Bertelsen. 1982. Correspondence Analysis: An
      Alternative to Principal Components. *World Archaeology* 14:
      41-60.

      .. rubric:: References
         :name: references

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 398-410.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(ESASites)
         NS <- rowSums(ESASites)
         NT <- rowSums(ESASites > 0)
         plot(NS, NT, xlab="Number of Artifacts", ylab="Number of Types", main="Early Stone Age Sites",
             las=1)
