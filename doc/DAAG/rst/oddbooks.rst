.. container::

   .. container::

      ======== ===============
      oddbooks R Documentation
      ======== ===============

      .. rubric:: Measurements on 12 books
         :name: measurements-on-12-books

      .. rubric:: Description
         :name: description

      Data giving thickness (mm), height (cm), width (cm) and weight
      (g), of 12 books. Books were selected so that thickness decreased
      as page area increased

      .. rubric:: Usage
         :name: usage

      ::

         data(oddbooks)

      .. rubric:: Format
         :name: format

      A data frame with 12 observations on the following 4 variables.

      thick
         a numeric vector

      height
         a numeric vector

      breadth
         a numeric vector

      weight
         a numeric vector

      .. rubric:: Source
         :name: source

      JM took books from his library.

      .. rubric:: Examples
         :name: examples

      ::

         data(oddbooks)
         str(oddbooks)
         plot(oddbooks) 
