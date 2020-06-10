========== ===============
state.info R Documentation
========== ===============

information about the American states needed for U.S. Congress
--------------------------------------------------------------

Description
~~~~~~~~~~~

Numeric codes and names of 50 states and the District of Columbia,
required to parse Keith Poole and Howard Rosenthal's collections of U.S.
Congressional roll calls.

Usage
~~~~~

::

   data(state.info)

Format
~~~~~~

``icpsr``
   integer, numeric code for state used by the Inter-university
   Consortium for Political and Social Research

``state``
   character, name of state or ``Washington     D.C.``

``year``
   numeric or ``NA``, year of statehood

Details
~~~~~~~

The function ``readKH`` converts the integer ICPSR codes into strings,
via a table lookup in this data frame. Another table lookup in
``state.abb`` provides the 2-letter abbreviation commonly used in
identifying American legislators, e.g., ``KENNEDY, E (D-MA)``.

Source
~~~~~~

Various ICPSR codebooks. http://www.icpsr.umich.edu

See Also
~~~~~~~~

``state``
