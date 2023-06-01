.. container::

   ==== ===============
   LoBD R Documentation
   ==== ===============

   .. rubric:: Cancer drug data use to provide an example of the use of
      the skew power distributions.
      :name: LoBD

   .. rubric:: Description
      :name: description

   A portion of an experiment to determine the limit of blank/limit of
   detection in a biochemical assay.

   .. rubric:: Usage
      :name: usage

   ::

      LoBD

   .. rubric:: Format
      :name: format

   A data frame with 84 observations on the following 9 variables.

   ``pool``
      a factor with levels ``1`` ``2`` ``3`` ``4`` ``5`` ``6`` ``7``
      ``8`` ``9`` ``10`` ``11`` ``12`` denoting the 12 pools used in the
      experiment; each pool had a different level of drug.

   ``I1L1``
      a numeric vector giving the measured concentration in pmol/L of
      drug in the assay

   ``I1L2``
      a numeric vector giving the measured concentration in pmol/L of
      drug in the assay

   ``I2L1``
      a numeric vector giving the measured concentration in pmol/L of
      drug in the assay

   ``I2L2``
      a numeric vector giving the measured concentration in pmol/L of
      drug in the assay

   ``I3L1``
      a numeric vector giving the measured concentration in pmol/L of
      drug in the assay

   ``I3L2``
      a numeric vector giving the measured concentration in pmol/L of
      drug in the assay

   ``I4L1``
      a numeric vector giving the measured concentration in pmol/L of
      drug in the assay

   ``I4L2``
      a numeric vector giving the measured concentration in pmol/L of
      drug in the assay

   .. rubric:: Details
      :name: details

   Important characteristics of a clinical chemistry assay are its limit
   of blank (LoB), and its limit of detection (LoD). The LoB,
   conceptually the highest reading likely to be obtained from a
   zero-concentration sample, is defined operationally by the upper 95%
   point of readings obtained from samples that do not contain the
   analyte. The LoD, conceptually the lowest level of analyte that can
   be reliably determined not to be blank, is defined operationally as
   true value at which there is a 95% chance of the reading being above
   the LoB.

   These data are from a portion of a LoB/D study of an assay for a drug
   used to treat certain cancers. Twelve pools were used, four of them
   blanks of different types, and eight with successively increasing
   drug levels. The 8 columns of the data set refer to measurements made
   using different instruments I and reagent lots L.

   .. rubric:: Source
      :name: source

   Used as an illustrative application for Box-Cox type transformations
   with negative values in Hawkins and Weisberg (2015). For examples of
   its use, see ``bcnPower``.

   .. rubric:: References
      :name: references

   Hawkins, D. and Weisberg, S. (2015) Combining the Box-Cox Power and
   Generalized Log Transformations to Accommodate Negative Responses,
   submitted for publication.

   .. rubric:: Examples
      :name: examples

   ::

      LoBD
