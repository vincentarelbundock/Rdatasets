.. container::

   .. container::

      ========= ===============
      tate_text R Documentation
      ========= ===============

      .. rubric:: Tate Gallery modern artwork metadata
         :name: tate-gallery-modern-artwork-metadata

      .. rubric:: Description
         :name: description

      Metadata such as artist, title, and year created for recent
      artworks owned by the Tate Gallery. Only artworks created during
      or after 1990 are included, and the metadata source was last
      updated in 2014. The Tate Gallery provides these data but requests
      users to be respectful of their `guidelines for
      use <https://github.com/tategallery/collection#usage-guidelines-for-open-data>`__.

      .. rubric:: Value
         :name: value

      ============= ========
      ``tate_text`` a tibble
      ============= ========

      .. rubric:: Source
         :name: source

      -  https://github.com/tategallery/collection

      -  https://www.tate.org.uk/

      .. rubric:: Examples
         :name: examples

      ::

         data(tate_text)
         str(tate_text)
