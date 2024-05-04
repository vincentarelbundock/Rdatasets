.. container::

   .. container::

      ==== ===============
      peng R Documentation
      ==== ===============

      .. rubric:: Size measurements for penguins near Palmer Station,
         Antarctica
         :name: size-measurements-for-penguins-near-palmer-station-antarctica

      .. rubric:: Description
         :name: description

      Data originally from
      ```palmerpenguins`` <https://allisonhorst.github.io/palmerpenguins/>`__.
      Includes measurements for penguin species, island in Palmer
      Archipelago, size (flipper length, body mass, bill dimensions),
      and sex.

      .. rubric:: Usage
         :name: usage

      ::

         peng

      .. rubric:: Format
         :name: format

      A tibble with 333 rows and 8 variables:

      species
         a factor denoting penguin species
         (``"Adélie", "Chinstrap" or "Gentoo"``)

      island
         a factor denoting island in Palmer Archipelago, Antarctica
         (``"Biscoe", "Dream" or "Torgersen"``)

      bill_length
         a number denoting bill length (millimeters)

      bill_depth
         a number denoting bill depth (millimeters)

      flipper_length
         an integer denoting flipper length (millimeters)

      body_mass
         an integer denoting body mass (grams)

      sex
         a factor denoting penguin sex (``"f", "m"``)

      year
         an integer denoting the study year (2007, 2008, or 2009)

      .. rubric:: Details
         :name: details

      In this version, variable names have been shortened (removing
      units) and observations with missing data have been removed.

      .. rubric:: Source
         :name: source

      Adélie penguins: Palmer Station Antarctica LTER and K. Gorman.
      2020. Structural size measurements and isotopic signatures of
      foraging among adult male and female Adélie penguins (Pygoscelis
      adeliae) nesting along the Palmer Archipelago near Palmer Station,
      2007-2009 ver 5. Environmental Data Initiative
      `doi:10.6073/pasta/98b16d7d563f265cb52372c8ca99e60f <https://doi.org/10.6073/pasta/98b16d7d563f265cb52372c8ca99e60f>`__

      Gentoo penguins: Palmer Station Antarctica LTER and K. Gorman.
      2020. Structural size measurements and isotopic signatures of
      foraging among adult male and female Gentoo penguin (Pygoscelis
      papua) nesting along the Palmer Archipelago near Palmer Station,
      2007-2009 ver 5. Environmental Data Initiative
      `doi:10.6073/pasta/7fca67fb28d56ee2ffa3d9370ebda689 <https://doi.org/10.6073/pasta/7fca67fb28d56ee2ffa3d9370ebda689>`__

      Chinstrap penguins: Palmer Station Antarctica LTER and K. Gorman.
      2020. Structural size measurements and isotopic signatures of
      foraging among adult male and female Chinstrap penguin (Pygoscelis
      antarcticus) nesting along the Palmer Archipelago near Palmer
      Station, 2007-2009 ver 6. Environmental Data Initiative
      `doi:10.6073/pasta/c14dfcfada8ea13a17536e73eb6fbe9e <https://doi.org/10.6073/pasta/c14dfcfada8ea13a17536e73eb6fbe9e>`__

      Originally published in: Gorman K.B., Williams T.D., Fraser W.R.
      (2014) Ecological Sexual Dimorphism and Environmental Variability
      within a Community of Antarctic Penguins (Genus Pygoscelis). PLoS
      ONE 9(3): e90081.
      `doi:10.1371/journal.pone.0090081 <https://doi.org/10.1371/journal.pone.0090081>`__

      .. rubric:: Examples
         :name: examples

      ::

         data(peng)
         # Covariance ellipses, centered, first two variables
         covEllipses(cbind(bill_length, bill_depth) ~ species, data=peng,
              center=TRUE, 
              fill=c(rep(FALSE,3), TRUE), 
              fill.alpha=.1, label.pos=c(1:3,0))

         # All pairs when more than two variables are specified. They look pretty similar
         covEllipses(peng[,3:6], peng$species, 
                     variables=1:4, 
                     fill=c(rep(FALSE,3), TRUE), 
                     fill.alpha=.1)
                     
         # Box's M test  
         peng.boxm <- boxM(cbind(bill_length, bill_depth, flipper_length, body_mass) ~ species, data=peng)
         peng.boxm
         plot(peng.boxm, gplabel="Species")

         # Fit MANOVA model, predicting species 
         peng.mod0 <-lm(cbind(bill_length, bill_depth, flipper_length, body_mass) ~
                        species, data=peng)
         car::Anova(peng.mod0)

         # HE plot
         heplot(peng.mod0, fill=TRUE, fill.alpha=0.1, 
                size="effect",
                xlim=c(35,52), ylim=c(14,20))
