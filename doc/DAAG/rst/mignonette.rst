.. container::

   .. container::

      ========== ===============
      mignonette R Documentation
      ========== ===============

      .. rubric:: Darwin's Wild Mignonette Data
         :name: darwins-wild-mignonette-data

      .. rubric:: Description
         :name: description

      Data compare the heights of crossed plants with self-fertilized
      plants of the wild mignonette *reseda lutea*. Plants were paired
      within the pots in which they were grown, with one on one side and
      one on the other.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         mignonette

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      cross
         heights of the crossed plants

      self
         heights of the self-fertilized plants

      .. rubric:: Source
         :name: source

      Darwin, Charles. 1877. The Effects of Cross and Self Fertilisation
      in the Vegetable Kingdom. Appleton and Company, New York, page
      118.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         print("Is Pairing Helpful? - Example 4.3.1")

         attach(mignonette)
         plot(cross ~ self, pch=rep(c(4,1), c(3,12))); abline(0,1) 
         abline(mean(cross-self), 1, lty=2)
         detach(mignonette)
