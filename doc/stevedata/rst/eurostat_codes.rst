.. container::

   ============== ===============
   eurostat_codes R Documentation
   ============== ===============

   .. rubric:: Eurostat Country Codes
      :name: eurostat_codes

   .. rubric:: Description
      :name: description

   A data set taken from Eurostat's glossary on codes and country
   classifications.

   .. rubric:: Usage
      :name: usage

   ::

      eurostat_codes

   .. rubric:: Format
      :name: format

   A data frame on the following 3 variables.

   ``country``
      an English country/territorial unit name

   ``iso2c``
      a two-character code for the country/territorial unit

   ``cat``
      a category indicator for the country/territorial unit. See Details
      section for more.

   .. rubric:: Details
      :name: details

   The ISO two-character code for Kosovo is not "XK". XK is a "user
   assigned" ISO 3166 code that is not used by the International
   Organization for Standardization, but is nevertheless in wide use by
   entities like the European Commission. To the best of my knowledge,
   Kosovo's official ISO classification is still what it was when it was
   a subdivision of Serbia/Yugoslavia.

   A glossary on Eurostat provides the following category entries
   included in this data frame. "EU" is an European Union member. "EFTA"
   are countries outside the European Union, but still included in the
   free trade agreement. "UK" is the United Kingdom, because they left.
   "EUCC" is a category for European Union candidate countries. "PC" are
   potential candidates. European Union expansion led to the delineation
   of neighboring states to "South" and "East" as part of the European
   Neighbourhood Policy (ENP). "OEC" stands for "Other European
   Countries", but is effectively a simple indicator for Russia.
