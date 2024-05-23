.. container::

   .. container::

      ======== ===============
      Mobility R Documentation
      ======== ===============

      .. rubric:: Social Mobility data
         :name: social-mobility-data

      .. rubric:: Description
         :name: description

      Data on social mobility, recording the occupational category of
      fathers and their sons.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Mobility)

      .. rubric:: Format
         :name: format

      A 2-dimensional array resulting from cross-tabulating 2 variables
      for 19912 observations. The variable names and their levels are:

      +----+-------------------------------+-------------------------------+
      | No | Name                          | Levels                        |
      +----+-------------------------------+-------------------------------+
      | 1  | ``Son'                        | ``"UpNonMan", "LoNonMan", "Up |
      |    | s_Occupation}\tab \code{"UpNo | Manual", "LoManual", "Farm"`` |
      |    | nMan", "LoNonMan", "UpManual" |                               |
      |    | , "LoManual", "Farm"}\cr 2\ta |                               |
      |    | b \code{Father's_Occupation`` |                               |
      +----+-------------------------------+-------------------------------+
      |    |                               |                               |
      +----+-------------------------------+-------------------------------+

      .. rubric:: Source
         :name: source

      Falguerolles, A. de and Mathieu, J. R. (1988). *Proceedings of
      COMPSTAT 88*, Copenhagen, Denmark, Springer-Verlag.

      Featherman, D. L. and Hauser, R. M. Occupations and social
      mobility in the United States. *Sociological Microjournal*, 12,
      Fiche 62. Copenhagen: Sociological Institute.

      .. rubric:: See Also
         :name: see-also

      ``Glass``, ``Hauser79``, ``Yamaguchi87`` for other examples of
      mobility data.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Mobility)
         Mobility

         # independence model
         MASS::loglm(~Father_Occupation + Son_Occupation, data = Mobility)

         vcd::mosaic(Mobility, shade=TRUE, legend = FALSE)
