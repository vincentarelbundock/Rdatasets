.. container::

   .. container::

      ====== ===============
      Mental R Documentation
      ====== ===============

      .. rubric:: Mental Impairment and Parents SES
         :name: mental-impairment-and-parents-ses

      .. rubric:: Description
         :name: description

      A 6 x 4 contingency table representing the cross-classification of
      mental health status (``mental``) of 1660 young New York residents
      by their parents' socioeconomic status (``ses``).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Mental)

      .. rubric:: Format
         :name: format

      A data frame frequency table with 24 observations on the following
      3 variables.

      ``ses``
         an ordered factor with levels ``1`` < ``2`` < ``3`` < ``4`` <
         ``5`` < ``6``

      ``mental``
         an ordered factor with levels ``Well`` < ``Mild`` <
         ``Moderate`` < ``Impaired``

      ``Freq``
         cell frequency: a numeric vector

      .. rubric:: Details
         :name: details

      Both ``ses`` and ``mental`` can be treated as ordered factors or
      integer scores. For ``ses``, 1="High" and 6="Low".

      .. rubric:: Source
         :name: source

      Haberman, S. J. *The Analysis of Qualitative Data: New
      Developments*, Academic Press, 1979, Vol. II, p. 375.

      Srole, L.; Langner, T. S.; Michael, S. T.; Kirkpatrick, P.; Opler,
      M. K. & Rennie, T. A. C. *Mental Health in the Metropolis: The
      Midtown Manhattan Study*, NYU Press, 1978, p. 289

      .. rubric:: References
         :name: references

      Friendly, M. *Visualizing Categorical Data*, Cary, NC: SAS
      Institute, 2000, Appendix B.7.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Mental)
         str(Mental)
         (Mental.tab <- xtabs(Freq ~ ses + mental, data=Mental))

         # mosaic and sieve plots
         mosaic(Mental.tab, gp=shading_Friendly)
         sieve(Mental.tab, gp=shading_Friendly)

         if(require(ca)){
           plot(ca(Mental.tab), main="Mental impairment & SES")
         }
