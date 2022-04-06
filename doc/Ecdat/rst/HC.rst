.. container::

   == ===============
   HC R Documentation
   == ===============

   .. rubric:: Heating and Cooling System Choice in Newly Built Houses
      in California
      :name: heating-and-cooling-system-choice-in-newly-built-houses-in-california

   .. rubric:: Description
      :name: description

   a cross-section

   *number of observations* : 250

   *observation* : households

   *country* : California

   .. rubric:: Usage
      :name: usage

   ::

      data(HC)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   depvar
      heating system, one of ``gcc`` (gas central heat with cooling),
      ``ecc`` (electric central resistance heat with cooling), ``erc``
      (electric room resistance heat with cooling), ``hpc`` (electric
      heat pump which provides cooling also), ``gc`` (gas central heat
      without cooling, ``ec`` (electric central resistance heat without
      cooling), ``er`` (electric room resistance heat without cooling)

   ich.z
      installation cost of the heating portion of the system

   icca
      installation cost for cooling

   och.z
      operating cost for the heating portion of the system

   occa
      operating cost for cooling

   income
      annual income of the household

   .. rubric:: References
      :name: references

   Kenneth Train's home page : http://elsa.berkeley.edu/~train/.

   .. rubric:: See Also
      :name: see-also

   ``Heating``, ``Index.Source``, ``Index.Economics``,
   ``Index.Econometrics``, ``Index.Observations``
