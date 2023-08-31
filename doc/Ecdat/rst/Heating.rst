.. container::

   ======= ===============
   Heating R Documentation
   ======= ===============

   .. rubric:: Heating System Choice in California Houses
      :name: Heating

   .. rubric:: Description
      :name: description

   a cross-section

   *number of observations* : 900

   *observation* : households

   *country* : California

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Heating)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   idcase
      id

   depvar
      heating system, one of ``gc`` (gas central), ``gr`` (gas room),
      ``ec`` (electric central), ``er`` (electric room), ``hp`` (heat
      pump)

   ic.z
      installation cost for heating system z (defined for the 5 heating
      systems)

   oc.z
      annual operating cost for heating system z (defined for the 5
      heating systems)

   pb.z
      ratio ``oc.z/ic.z``

   income
      annual income of the household

   agehed
      age of the household head

   rooms
      numbers of rooms in the house

   .. rubric:: References
      :name: references

   Kenneth Train's home page : https://eml.berkeley.edu/~train/.

   .. rubric:: See Also
      :name: see-also

   ``HC``, ``Index.Source``, ``Index.Economics``,
   ``Index.Econometrics``, ``Index.Observations``
