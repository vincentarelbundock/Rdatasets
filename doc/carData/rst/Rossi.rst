.. container::

   .. container::

      ===== ===============
      Rossi R Documentation
      ===== ===============

      .. rubric:: Rossi et al.'s Criminal Recidivism Data
         :name: rossi-et-al.s-criminal-recidivism-data

      .. rubric:: Description
         :name: description

      This data set is originally from Rossi et al. (1980), and is used
      as an example in Allison (1995). The data pertain to 432 convicts
      who were released from Maryland state prisons in the 1970s and who
      were followed up for one year after release. Half the released
      convicts were assigned at random to an experimental treatment in
      which they were given financial aid; half did not receive aid.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Rossi

      .. rubric:: Format
         :name: format

      A data frame with 432 observations on the following 62 variables.

      ``week``
         week of first arrest after release or censoring; all censored
         observations are censored at 52 weeks.

      ``arrest``
         ``1`` if arrested, ``0`` if not arrested.

      ``fin``
         financial aid: ``no`` ``yes``.

      ``age``
         in years at time of release.

      ``race``
         ``black`` or ``other``.

      ``wexp``
         full-time work experience before incarceration: ``no`` or
         ``yes``.

      ``mar``
         marital status at time of release: ``married`` or
         ``not married``.

      ``paro``
         released on parole? ``no`` or ``yes``.

      ``prio``
         number of convictions prior to current incarceration.

      ``educ``
         level of education: ``2`` = 6th grade or less; ``3`` = 7th to
         9th grade; ``4`` = 10th to 11th grade; ``5`` = 12th grade;
         ``6`` = some college.

      ``emp1``
         employment status in the first week after release: ``no`` or
         ``yes``.

      ``emp2``
         as above.

      ``emp3``
         as above.

      ``emp4``
         as above.

      ``emp5``
         as above.

      ``emp6``
         as above.

      ``emp7``
         as above.

      ``emp8``
         as above.

      ``emp9``
         as above.

      ``emp10``
         as above.

      ``emp11``
         as above.

      ``emp12``
         as above.

      ``emp13``
         as above.

      ``emp14``
         as above.

      ``emp15``
         as above.

      ``emp16``
         as above.

      ``emp17``
         as above.

      ``emp18``
         as above.

      ``emp19``
         as above.

      ``emp20``
         as above.

      ``emp21``
         as above.

      ``emp22``
         as above.

      ``emp23``
         as above.

      ``emp24``
         as above.

      ``emp25``
         as above.

      ``emp26``
         as above.

      ``emp27``
         as above.

      ``emp28``
         as above.

      ``emp29``
         as above.

      ``emp30``
         as above.

      ``emp31``
         as above.

      ``emp32``
         as above.

      ``emp33``
         as above.

      ``emp34``
         as above.

      ``emp35``
         as above.

      ``emp36``
         as above.

      ``emp37``
         as above.

      ``emp38``
         as above.

      ``emp39``
         as above.

      ``emp40``
         as above.

      ``emp41``
         as above.

      ``emp42``
         as above.

      ``emp43``
         as above.

      ``emp44``
         as above.

      ``emp45``
         as above.

      ``emp46``
         as above.

      ``emp47``
         as above.

      ``emp48``
         as above.

      ``emp49``
         as above.

      ``emp50``
         as above.

      ``emp51``
         as above.

      ``emp52``
         as above.

      .. rubric:: Source
         :name: source

      Allison, P.D. (1995). *Survival Analysis Using the SAS System: A
      Practical Guide.* Cary, NC: SAS Institute.

      .. rubric:: References
         :name: references

      Rossi, P.H., R.A. Berk, and K.J. Lenihan (1980). *Money, Work, and
      Crime: Some Experimental Results.* New York: Academic Press.

      John Fox, Marilia Sa Carvalho (2012). The RcmdrPlugin.survival
      Package: Extending the R Commander Interface to Survival Analysis.
      *Journal of Statistical Software*, 49(7), 1-32.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(Rossi)
