.. container::

   ========== ===============
   state.info R Documentation
   ========== ===============

   .. rubric:: information about the American states needed for U.S.
      Congress
      :name: state.info

   .. rubric:: Description
      :name: description

   Numeric codes and names of 50 states and the District of Columbia,
   required to parse Keith Poole and Howard Rosenthal's collections of
   U.S. Congressional roll calls.

   .. rubric:: Usage
      :name: usage

   ::

      data(state.info)

   .. rubric:: Format
      :name: format

   ``icpsr``
      integer, numeric code for state used by the Inter-university
      Consortium for Political and Social Research

   ``state``
      character, name of state or ``Washington     D.C.``

   ``year``
      numeric or ``NA``, year of statehood

   .. rubric:: Details
      :name: details

   The function ``readKH`` converts the integer ICPSR codes into
   strings, via a table lookup in this data frame. Another table lookup
   in ``state.abb`` provides the 2-letter abbreviation commonly used in
   identifying American legislators, e.g., ``KENNEDY, E (D-MA)``.

   .. rubric:: Source
      :name: source

   Various ICPSR codebooks. http://www.icpsr.umich.edu

   .. rubric:: See Also
      :name: see-also

   ``state``
