.. container::

   ========= ===============
   PatentsRD R Documentation
   ========= ===============

   .. rubric:: Patents, R\&D and Technological Spillovers for a Panel of
      Firms
      :name: patents-rd-and-technological-spillovers-for-a-panel-of-firms

   .. rubric:: Description
      :name: description

   a panel of 181 observations from 1983 to 1991

   *number of observations* : 1629

   *observation* : production units

   *country* : world

   .. rubric:: Usage
      :name: usage

   ::

      data(PatentsRD)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   year
      year

   fi
      firm's id

   sector
      firm's main industry sector, one of ``aero`` (aerospace), ``chem``
      (chemistry), ``comput`` (computer), ``drugs``, ``elec``
      (electricity), ``food``, ``fuel`` (fuel and mining), ``glass``,
      ``instr`` (instruments), ``machin`` (machinery), ``metals``,
      ``other``, ``paper``, ``soft`` (software), ``motor`` (motor
      vehicles)

   geo
      geographic area, one of ``eu`` (European Union), ``japan``,
      ``usa``, ``rotw`` (rest of the world)

   patent
      numbers of European patent applications

   rdexp
      log of R\&D expenditures

   spil
      log of spillovers

   .. rubric:: Source
      :name: source

   Cincer, Michele (1997) “Patents, R \\& D and technological spillovers
   at the firm level : some evidence from econometric count models for
   panel data”, *Journal of Applied Econometrics*, **12(3)**, May–June,
   265–280.

   .. rubric:: References
      :name: references

   Journal of Applied Econometrics data archive :
   http://qed.econ.queensu.ca/jae/. Verbeek, Marno (2004) *A Guide to
   Modern Econometrics*, John Wiley and Sons, chapter 7.

   .. rubric:: See Also
      :name: see-also

   ``PatentsHGH``, ``Index.Source``, ``Index.Economics``,
   ``Index.Econometrics``, ``Index.Observations``, ``Index.Time.Series``
