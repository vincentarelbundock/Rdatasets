.. container::

   .. container::

      ======= ===============
      RepVict R Documentation
      ======= ===============

      .. rubric:: Repeat Victimization Data
         :name: repeat-victimization-data

      .. rubric:: Description
         :name: description

      Data from Reiss (1980) given by Fienberg (1980) about instances of
      repeat victimization for households in the U.S. National Crime
      Survey.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("RepVict")

      .. rubric:: Format
         :name: format

      A 2-dimensional array resulting from cross-tabulating
      victimization. The variables and their levels are as follows:

      +----+----------------------+-------------------------------+
      | No | Name                 | Levels                        |
      +----+----------------------+-------------------------------+
      | 1  | First Victimization  | Rape, Assault, Robbery,       |
      |    |                      | Pickpocket, Personal Larceny, |
      +----+----------------------+-------------------------------+
      |    |                      | Burglary, Household Larceny,  |
      |    |                      | Auto Theft                    |
      +----+----------------------+-------------------------------+
      | 2  | Second Victimization | Rape, Assault, Robbery,       |
      |    |                      | Pickpocket, Personal Larceny, |
      +----+----------------------+-------------------------------+
      |    |                      | Burglary, Household Larceny,  |
      |    |                      | Auto Theft                    |
      +----+----------------------+-------------------------------+

      .. rubric:: Source
         :name: source

      Michael Friendly (2000), Visualizing Categorical Data, page 113.

      .. rubric:: References
         :name: references

      S. E. Fienberg (1980), *The Analysis of Cross-Classified
      Categorical Data*, MIT Press, Cambridge, 2nd edition.

      A. J. J. Reiss (1980), Victim proneness by type of crime in repeat
      victimization. In S. E. Fienberg & A. J. J. Reiss (eds.),
      *Indicators of Crime and Criminal Justice*. U.S. Government
      Printing Office, Washington, DC.

      M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
      Cary, NC.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("RepVict")

         mosaic(RepVict[-c(4,7),-c(4,7)], gp = shading_max,
                main = "Repeat Victimization Data")
