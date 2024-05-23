.. container::

   .. container::

      === ===============
      cgd R Documentation
      === ===============

      .. rubric:: Chronic Granulotamous Disease data
         :name: chronic-granulotamous-disease-data

      .. rubric:: Description
         :name: description

      Data are from a placebo controlled trial of gamma interferon in
      chronic granulotomous disease (CGD). Contains the data on time to
      serious infections observed through end of study for each patient.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         cgd
         data(cgd)

      .. rubric:: Format
         :name: format

      id
         subject identification number

      center
         enrolling center

      random
         date of randomization

      treatment
         placebo or gamma interferon

      sex
         sex

      age
         age in years, at study entry

      height
         height in cm at study entry

      weight
         weight in kg at study entry

      inherit
         pattern of inheritance

      steroids
         use of steroids at study entry,1=yes

      propylac
         use of prophylactic antibiotics at study entry

      hos.cat
         a categorization of the centers into 4 groups

      tstart, tstop
         start and end of each time interval

      status
         1=the interval ends with an infection

      enum
         observation number within subject

      .. rubric:: Details
         :name: details

      The ``cgd0`` data set is in the form found in the references, with
      one line per patient and no recoding of the variables. The ``cgd``
      data set (this one) has been cast into (start, stop] format with
      one line per event, and covariates such as center recoded as
      factors to include meaningful labels.

      .. rubric:: Source
         :name: source

      Fleming and Harrington, Counting Processes and Survival Analysis,
      appendix D.2.

      .. rubric:: See Also
         :name: see-also

      ``link{cgd0}``
