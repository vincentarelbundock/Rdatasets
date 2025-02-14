.. container::

   .. container::

      ======== ===============
      nuclides R Documentation
      ======== ===============

      .. rubric:: Nuclide data
         :name: nuclide-data

      .. rubric:: Description
         :name: description

      The ``nuclides`` dataset contains information on all known
      nuclides, providing data on nuclear structure and decay modes
      across 118 elements. There is data here on natural abundances,
      atomic mass, spin, half-life, and more. The typical users for such
      a dataset include researchers in fields such as nuclear physics,
      radiochemistry, and nuclear medicine.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         nuclides

      .. rubric:: Format
         :name: format

      A tibble with 3,383 rows and 29 variables:

      nuclide
         The symbol for the nuclide.

      z, n
         The number of protons and neutrons.

      element
         The element symbol.

      radius, radius_uncert
         The charge radius and its associated uncertainty. In units of
         fm.

      abundance, abundance_uncert
         The abundance of the stable isotope as a mole fraction (in
         relation to other stable isotopes of the same element). Values
         are provided for the nuclide only if ``is_stable`` is ``TRUE``.

      is_stable
         Is the nuclide a stable isotope?

      half_life, half_life_uncert
         The nuclide's half life represented as seconds.

      isospin
         The isospin, or the quantum number related to the up and down
         quark content of the particle.

      decay_1, decay_2, decay_3
         The 1st, 2nd, and 3rd decay modes.

      decay_1_pct, decay_1_pct_uncert, decay_2_pct, decay_2_pct_uncert, decay_3_pct, decay_3_pct_uncert
         The branching proportions for the 1st, 2nd, and 3rd decays
         (along with uncertainty values).

      magnetic_dipole, magnetic_dipole_uncert
         The magnetic dipole and its associated uncertainty. Expressed
         in units of micro N, or nuclear magneton values.

      electric_quadrupole, electric_quadrupole_uncert
         The electric quadrupole and its associated uncertainty. In
         units of barn (b).

      atomic_mass, atomic_mass_uncert
         The atomic mass and its associated uncertainty. In units of
         micro AMU.

      mass_excess, mass_excess_uncert
         The mass excess and its associated uncertainty. In units of
         keV.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-16

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.11.0`` (July 9, 2024)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gibraltar``, ``gtcars``, ``illness``, ``metro``,
      ``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(nuclides)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_nuclides.png
