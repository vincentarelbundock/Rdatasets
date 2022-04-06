.. container::

   === ===============
   ahd R Documentation
   === ===============

   .. rubric:: Methylprednisolone data
      :name: methylprednisolone-data

   .. rubric:: Description
      :name: description

   Data from a longitudinal study examining the effectiveness of
   Methylprednisolone as a treatment for patients with severe alcoholic
   hepatitis. Subjects were randomly assigned to a treatment (31
   received a placebo, 35 received the treatment) and serum bilirubin
   was measures each week for four weeks.

   .. rubric:: Usage
      :name: usage

   ::

      data(ahd)

   .. rubric:: Format
      :name: format

   A data frame with 330 observations on the following 5 variables:

   treatment
      The treatment a subject received - a factor. Levels are
      ``placebo`` and ``treated``.

   subject
      Subject ID - a factor.

   week
      Week of the study (0–4) - the time variable.

   sbvalue
      Serum bilirubin level (in *μ*\ mol/L).

   baseline
      A subject's serum bilirubin level at week 0.

   .. rubric:: Source
      :name: source

   Vonesh, E. F. and Chinchilli, V. M. (1997) *Linear and Nonlinear
   Models for the Analysis of Repeated Measurements*. Marcel Dekker, New
   York.

   .. rubric:: References
      :name: references

   Carithers, R. L., Herlong, H. F., Diehl, A. M., Shaw, E. W., Combes,
   B., Fallon, H. J. & Maddrey, W. C. (1989) Methylprednisolone therapy
   in patients with severe alcoholic hepatitis. *Annals of Internal
   Medicine*, **110**\ (9), 685–690.
