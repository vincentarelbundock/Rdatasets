.. container::

   ========== ===============
   partycodes R Documentation
   ========== ===============

   .. rubric:: political parties appearing in the U.S. Congress
      :name: partycodes

   .. rubric:: Description
      :name: description

   Numeric codes and names of 85 political parties appearing in Poole
   and Rosenthal's collection of U.S. Congressional roll calls.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(partycodes)

   .. rubric:: Format
      :name: format

   -  ``code``\ integer, numeric code for legislator appearing in Poole
      and Rosenthal rollcall data files

   -  ``party``\ character, name of party

   .. rubric:: Details
      :name: details

   The function ``readKH`` converts the integer codes into strings, via
   a table lookup in this data frame.

   .. rubric:: Source
      :name: source

   Keith Poole's website: http://legacy.voteview.com/PARTY3.HTM

   .. rubric:: See Also
      :name: see-also

   ``readKH``
