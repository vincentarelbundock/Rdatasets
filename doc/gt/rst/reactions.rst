.. container::

   .. container::

      ========= ===============
      reactions R Documentation
      ========= ===============

      .. rubric:: Reaction rates for gas-phase atmospheric reactions of
         organic compounds
         :name: reaction-rates-for-gas-phase-atmospheric-reactions-of-organic-compounds

      .. rubric:: Description
         :name: description

      The ``reactions`` dataset contains kinetic data for second-order
      (two body) gas-phase chemical reactions for 1,683 organic
      compounds. The reaction-rate values and parameters within this
      dataset are useful for studies of the atmospheric environment.
      Organic pollutants, which are present in trace amounts in the
      atmosphere, have been extensively studied by research groups since
      their persistence in the atmosphere requires specific attention.
      Many researchers have reported kinetic data on specific gas-phase
      reactions and these mainly involve oxidation reactions with OH,
      nitrate radicals, ozone, and chlorine atoms.

      This compilation of rate constant (*k*) data as contains the
      values for rate constants at 298 K (in units of
      ``⁠cm^3 molecules^-1 s^-1⁠``) as well as parameters that allow for
      the calculation of rate constants at different temperatures (the
      temperature dependence parameters: ``A``, ``B``, and ``n``).
      Uncertainty values/factors and temperature limits are also
      provided here where information is available.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         reactions

      .. rubric:: Format
         :name: format

      A tibble with 1,683 rows and 39 variables:

      compd_name
         The name of the primary compound undergoing reaction with OH,
         ozone, NO3, or Cl.

      cmpd_mwt
         The molecular weight of the compound in units of g/mol.

      cmpd_formula
         The chemical formula of the compound.

      cmpd_type
         The category of compounds that the ``compd_name`` falls under.

      cmpd_smiles
         The SMILES (simplified molecular-input line-entry system)
         representation for the compound.

      cmpd_inchi
         The InChI (International Chemical Identifier) representation
         for the compound.

      cmpd_inchikey
         The InChIKey, which is a hashed InChI value, has a fixed length
         of 27 characters. These values can be used to more easily
         perform database searches of chemical compounds.

      OH_k298
         Rate constant at 298 K for OH reactions.

      OH_uncert
         Uncertainty as a percentage for certain OH reactions.

      OH_u_fac
         Uncertainty as a plus/minus difference for certain OH
         reactions.

      OH_a, OH_b, OH_n
         Extended temperature dependence parameters for bimolecular OH
         reactions, to be used in the Arrhenius expression:
         ``⁠k(T)=A exp(-B/T) (T/300)^n⁠``. In that, ``A`` is expressed as
         cm^3 molecules^-1 s^-1, ``B`` is in units of K, and ``n`` is
         dimensionless. Any ``NA`` values indicate that data is not
         available.

      OH_t_low, OH_t_high
         The low and high temperature boundaries (in units of K) for
         which the ``OH_a``, ``OH_b``, and ``OH_n`` parameters are
         valid.

      O3_k298
         Rate constant at 298 K for ozone reactions.

      O3_uncert
         Uncertainty as a percentage for certain ozone reactions.

      O3_u_fac
         Uncertainty as a plus/minus difference for certain ozone
         reactions.

      O3_a, O3_b, O3_n
         Extended temperature dependence parameters for bimolecular
         ozone reactions, to be used in the Arrhenius expression:
         ``⁠k(T)=A exp(-B/T) (T/300)^n⁠``. In that, ``A`` is expressed as
         cm^3 molecules^-1 s^-1, ``B`` is in units of K, and ``n`` is
         dimensionless. Any ``NA`` values indicate that data is not
         available.

      O3_t_low, O3_t_high
         The low and high temperature boundaries (in units of K) for
         which the ``O3_a``, ``O3_b``, and ``O3_n`` parameters are
         valid.

      NO3_k298
         Rate constant at 298 K for NO3 reactions.

      NO3_uncert
         Uncertainty as a percentage for certain NO3 reactions.

      NO3_u_fac
         Uncertainty as a plus/minus difference for certain NO3
         reactions.

      NO3_a, NO3_b, NO3_n
         Extended temperature dependence parameters for bimolecular NO3
         reactions, to be used in the Arrhenius expression:
         ``⁠k(T)=A exp(-B/T) (T/300)^n⁠``. In that, ``A`` is expressed as
         cm^3 molecules^-1 s^-1, ``B`` is in units of K, and ``n`` is
         dimensionless. Any ``NA`` values indicate that data is not
         available.

      NO3_t_low, NO3_t_high
         The low and high temperature boundaries (in units of K) for
         which the ``NO3_a``, ``NO3_b``, and ``NO3_n`` parameters are
         valid.

      Cl_k298
         Rate constant at 298 K for Cl reactions.

      Cl_uncert
         Uncertainty as a percentage for certain Cl reactions.

      Cl_u_fac
         Uncertainty as a plus/minus difference for certain Cl
         reactions.

      Cl_a, Cl_b, Cl_n
         Extended temperature dependence parameters for bimolecular Cl
         reactions, to be used in the Arrhenius expression:
         ``⁠k(T)=A exp(-B/T) (T/300)^n⁠``. In that, ``A`` is expressed as
         cm^3 molecules^-1 s^-1, ``B`` is in units of K, and ``n`` is
         dimensionless. Any ``NA`` values indicate that data is not
         available.

      Cl_t_low, Cl_t_high
         The low and high temperature boundaries (in units of K) for
         which the ``Cl_a``, ``Cl_b``, and ``Cl_n`` parameters are
         valid.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-14

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.11.0`` (July 9, 2024)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gibraltar``, ``gtcars``, ``illness``, ``metro``,
      ``nuclides``, ``peeps``, ``photolysis``, ``pizzaplace``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(reactions)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_reactions.png
