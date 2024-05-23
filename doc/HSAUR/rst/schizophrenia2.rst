.. container::

   .. container::

      ============== ===============
      schizophrenia2 R Documentation
      ============== ===============

      .. rubric:: Schizophrenia Data
         :name: schizophrenia-data

      .. rubric:: Description
         :name: description

      Though disorder and early onset of schizophrenia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("schizophrenia2")

      .. rubric:: Format
         :name: format

      A data frame with 220 observations on the following 4 variables.

      ``subject``
         the patient ID, a factor with levels ``1`` to ``44``.

      ``onset``
         the time of onset of the disease, a factor with levels
         ``< 20 yrs`` and ``> 20 yrs``.

      ``disorder``
         whether thought disorder was ``absent`` or ``present``, the
         response variable.

      ``month``
         month after hospitalisation.

      .. rubric:: Details
         :name: details

      The data were collected in a follow-up study of women patients
      with schizophrenia. The binary response recorded at 0, 2, 6, 8 and
      10 months after hospitalisation was thought disorder (absent or
      present). The single covariate is the factor indicating whether a
      patient had suffered early or late onset of her condition (age of
      onset less than 20 years or age of onset 20 years or above). The
      question of interest is whether the course of the illness differs
      between patients with early and late onset?

      .. rubric:: Source
         :name: source

      Davis (2002), *Statistical Methods for the Analysis of Repeated
      Measurements*, Springer, New York.

      .. rubric:: Examples
         :name: examples

      .. code:: R

           data("schizophrenia2", package = "HSAUR")
           mosaicplot(xtabs( ~ onset + month + disorder, data = schizophrenia2))
