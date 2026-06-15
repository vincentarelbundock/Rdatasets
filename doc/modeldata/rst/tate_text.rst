========= ===============
tate_text R Documentation
========= ===============

Tate Gallery modern artwork metadata
------------------------------------

Description
~~~~~~~~~~~

Metadata such as artist, title, and year created for recent artworks
owned by the Tate Gallery. Only artworks created during or after 1990
are included, and the metadata source was last updated in 2014. The Tate
Gallery provides these data but requests users to be respectful of their
`guidelines for
use <https://github.com/tategallery/collection#usage-guidelines-for-open-data>`__.

Value
~~~~~

============= ========
``tate_text`` a tibble
============= ========

Source
~~~~~~

- https://github.com/tategallery/collection

- https://www.tate.org.uk/

Examples
~~~~~~~~

.. code:: R

   data(tate_text)
   str(tate_text)
