.. container::

   .. container::

      ============ ===============
      cat_adoption R Documentation
      ============ ===============

      .. rubric:: Cat Adoption
         :name: cat-adoption

      .. rubric:: Description
         :name: description

      A subset of the cats at the animal shelter in Long Beach,
      California, USA.

      .. rubric:: Details
         :name: details

      A data frame with 2257 rows and 19 columns:

      time
         The time the cat spent at the shelter.

      event
         The event of interest is the cat being homed or returned to its
         original location (i.e., owner or community). The non-event is
         the cat being transferred to another shelter or dying. Zero
         indicates a non-event (censored), and one corresponds to the
         event occurring.

      sex
         The sex of the cat.

      neutered
         Whether the cat is neutered.

      intake_condition
         The intake condition of the cat.

      intake_type
         The type of intake.

      latitude
         Latitude of the intersection/cross street of intake or capture.

      longitude
         Longitude of the intersection/cross street of intake or
         capture.

      black,brown,brown_tabby,calico,cream,gray,gray_tabby,orange,orange_tabby,tan,tortie,white
         Indicators for the color/pattern of the cat's fur.

      .. rubric:: Value
         :name: value

      tibble

      .. rubric:: Source
         :name: source

      https://data.longbeach.gov/explore/dataset/animal-shelter-intakes-and-outcomes/information/
      on 2024-06-17

      .. rubric:: Examples
         :name: examples

      .. code:: R

         str(cat_adoption)
