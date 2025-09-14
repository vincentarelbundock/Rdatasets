.. container::

   .. container::

      ======== ===============
      penguins R Documentation
      ======== ===============

      .. rubric:: Measurements of Penguins near Palmer Station,
         Antarctica
         :name: measurements-of-penguins-near-palmer-station-antarctica

      .. rubric:: Description
         :name: description

      Data on adult penguins covering three species found on three
      islands in the Palmer Archipelago, Antarctica, including their
      size (flipper length, body mass, bill dimensions), and sex.

      The columns of ``penguins`` are a subset of the more extensive
      ``penguins_raw`` data frame, which includes nesting observations
      and blood isotope data. There are differences in the column names
      and data types. See the ‘Format’ section for details.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         penguins
         penguins_raw

      .. rubric:: Format
         :name: format

      ``penguins`` is a data frame with 344 rows and 8 variables:

      ``species``
         ``factor``, with levels ``Adelie``, ``Chinstrap``, and
         ``Gentoo``

      ``island``
         ``factor``, with levels ``Biscoe``, ``Dream``, and
         ``Torgersen``)

      ``bill_len``
         ``numeric``, bill length (millimeters)

      ``bill_dep``
         ``numeric``, bill depth (millimeters)

      ``flipper_len``
         ``integer``, flipper length (millimeters)

      ``body_mass``
         ``integer``, body mass (grams)

      ``sex``
         ``factor``, with levels ``female`` and ``male``

      ``year``
         ``integer``, study year: 2007, 2008, or 2009

      ``penguins_raw`` is a data frame with 344 rows and 17 variables. 8
      columns correspond to columns in ``penguins``, though with
      different variable names and/or classes:

      ``Species``
         ``character``

      ``Island``
         ``character``

      ``Culmen Length (mm)``
         ``numeric``, bill length

      ``Culmen Depth (mm)``
         ``numeric``, bill depth

      ``Flipper Length (mm)``
         ``numeric``, flipper length

      ``Body Mass (g)``
         ``numeric``, body mass

      ``Sex``
         ``character``

      ``Date Egg``
         ``Date``, when study nest observed with 1 egg. The year
         component is the ``year`` column in ``penguins``

      There are 9 further columns in ``penguins_raw``:

      ``studyName``
         ``character``, expedition during which the data was collected

      ``Sample Number``
         ``numeric``, continuous numbering sequence for each sample

      ``Region``
         ``character``, the region of Palmer LTER sampling grid

      ``Stage``
         ``character``, denoting reproductive stage at sampling

      ``Individual ID``
         ``character``, unique ID for each individual in dataset

      ``Clutch Completion``
         ``character``, if the study nest was observed with a full
         clutch, i.e., 2 eggs

      ``Delta 15 N (o/oo)``
         ``numeric``, the ratio of stable isotopes 15N:14N

      ``Delta 13 C (o/oo)``
         ``numeric``, the ratio of stable isotopes 13C:12C

      ``Comments``
         ``character``, additional relevant information

      .. rubric:: Details
         :name: details

      Gorman et al. (2014) used the data to study sex dimorphism
      separately for the three species.

      Horst et al. (2022) popularized the data as an illustration for
      different statistical methods, as an alternative to the ``iris``
      data.

      Kaye et al. (2025) provide the scripts used to create these data
      sets from the original source data, and a notebook reproducing
      results from Gorman et al. (2014).

      .. rubric:: Note
         :name: note

      These data sets are also available in the
      `palmerpenguins <https://CRAN.R-project.org/package=palmerpenguins>`__
      package. See the `package
      website <https://allisonhorst.github.io/palmerpenguins/>`__ for
      further details and resources.

      The ``penguins`` data has some shorter variable names than the
      palmerpenguins version, for compact code and data display.

      .. rubric:: Source
         :name: source

      Adélie penguins:
         Palmer Station Antarctica LTER and K. Gorman (2020). Structural
         size measurements and isotopic signatures of foraging among
         adult male and female Adélie penguins (Pygoscelis adeliae)
         nesting along the Palmer Archipelago near Palmer Station,
         2007-2009 ver 5. Environmental Data Initiative,
         `doi:10.6073/pasta/98b16d7d563f265cb52372c8ca99e60f <https://doi.org/10.6073/pasta/98b16d7d563f265cb52372c8ca99e60f>`__.

      Gentoo penguins:
         Palmer Station Antarctica LTER and K. Gorman (2020).
         `doi:10.6073/pasta/7fca67fb28d56ee2ffa3d9370ebda689 <https://doi.org/10.6073/pasta/7fca67fb28d56ee2ffa3d9370ebda689>`__.

      Chinstrap penguins:
         Palmer Station Antarctica LTER and K. Gorman (2020).
         `doi:10.6073/pasta/c14dfcfada8ea13a17536e73eb6fbe9e <https://doi.org/10.6073/pasta/c14dfcfada8ea13a17536e73eb6fbe9e>`__.

      The title naming convention for the source for the Gentoo and
      Chinstrap data is that same as for Adélie penguins.

      .. rubric:: References
         :name: references

      Gorman, K. B., Williams, T. D. and Fraser, W. R. (2014) Ecological
      Sexual Dimorphism and Environmental Variability within a Community
      of Antarctic Penguins (Genus Pygoscelis). *PLoS ONE* **9**, 3,
      e90081;
      `doi:10.1371/journal.pone.0090081 <https://doi.org/10.1371/journal.pone.0090081>`__.

      Horst, A. M., Hill, A. P. and Gorman, K. B. (2022) Palmer
      Archipelago Penguins Data in the palmerpenguins R Package - An
      Alternative to Anderson's Irises. *R Journal* **14**, 1;
      `doi:10.32614/RJ-2022-020 <https://doi.org/10.32614/RJ-2022-020>`__.

      Kaye, E., Turner, H., Gorman, K. B., Horst, A. M. and Hill, A. P.
      (2025) Preparing the Palmer Penguins Data for the datasets Package
      in R.
      `doi:10.5281/zenodo.14902740 <https://doi.org/10.5281/zenodo.14902740>`__.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## view summaries
         summary(penguins)
         summary(penguins_raw) # not useful for character vectors
         ## convert character vectors to factors first
         dFactor <- function(dat) {
           dat[] <- lapply(dat, \(.) if (is.character(.)) as.factor(.) else .)
           dat
         }
         summary(dFactor(penguins_raw))

         ## visualise distribution across factors
         plot(island ~ species, data = penguins)
         plot(sex ~ interaction(island, species, sep = "\n"), data = penguins)

         ## bill depth vs. length by species (color) and sex (symbol):
         ## positive correlations for all species, males tend to have bigger bills
         sym <- c(1, 16)
         pal <- c("darkorange","purple","cyan4")
         plot(bill_dep ~ bill_len, data = penguins, pch = sym[sex], col = pal[species])

         ## simplified sex dimorphism analysis for Adelie species:
         ## proportion of males increases with several size measurements
         adelie <- subset(penguins, species == "Adelie")
         plot(sex ~ bill_len, data = adelie)
         plot(sex ~ bill_dep, data = adelie)
         plot(sex ~ body_mass, data = adelie)
         m <- glm(sex ~ bill_len + bill_dep + body_mass, data = adelie, family = binomial)
         summary(m)

         ## Produce the long variable names as from {palmerpenguins} pkg:
         long_nms <- sub("len", "length_mm",
                         sub("dep","depth_mm",
                             sub("mass", "mass_g", colnames(penguins))))
         ## compare long and short names:
         noquote(rbind(long_nms, nms = colnames(penguins)))

         ## Not run:  # << keeping shorter 'penguins' names in this example:
             colnames(penguins) <- long_nms

         ## End(Not run)
