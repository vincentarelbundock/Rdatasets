========== ===============
partycodes R Documentation
========== ===============

political parties appearing in the U.S. Congress
------------------------------------------------

Description
~~~~~~~~~~~

Numeric codes and names of 85 political parties appearing in Poole and
Rosenthal's collection of U.S. Congressional roll calls.

Usage
~~~~~

::

   data(partycodes)

Format
~~~~~~

-  ``code``\ integer, numeric code for legislator appearing in Poole and
   Rosenthal rollcall data files

-  ``party``\ character, name of party

Details
~~~~~~~

The function ``readKH`` converts the integer codes into strings, via a
table lookup in this data frame.

Source
~~~~~~

Keith Poole's website: http://legacy.voteview.com/PARTY3.HTM

See Also
~~~~~~~~

``readKH``
