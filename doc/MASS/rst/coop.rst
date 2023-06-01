.. container::

   ==== ===============
   coop R Documentation
   ==== ===============

   .. rubric:: Co-operative Trial in Analytical Chemistry
      :name: coop

   .. rubric:: Description
      :name: description

   Seven specimens were sent to 6 laboratories in 3 separate batches and
   each analysed for Analyte. Each analysis was duplicated.

   .. rubric:: Usage
      :name: usage

   ::

      coop

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   ``Lab``
      Laboratory, ``L1``, ``L2``, ..., ``L6``.

   ``Spc``
      Specimen, ``S1``, ``S2``, ..., ``S7``.

   ``Bat``
      Batch, ``B1``, ``B2``, ``B3`` (nested within ``Spc/Lab``),

   ``Conc``
      Concentration of Analyte in ``g/kg``.

   .. rubric:: Source
      :name: source

   Analytical Methods Committee (1987) Recommendations for the conduct
   and interpretation of co-operative trials, *The Analyst* **112**,
   679–686.

   .. rubric:: References
      :name: references

   Venables, W. N. and Ripley, B. D. (2002) *Modern Applied Statistics
   with S.* Fourth edition. Springer.

   .. rubric:: See Also
      :name: see-also

   ``chem``, ``abbey``.
