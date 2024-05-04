.. container::

   .. container::

      === ===============
      ICU R Documentation
      === ===============

      .. rubric:: Intensive Care Unit Patients
         :name: intensive-care-unit-patients

      .. rubric:: Description
         :name: description

      Data for a sample of 200 patients at an Intensive Care Unit (ICU)

      .. rubric:: Format
         :name: format

      A data frame with 200 observations on the following 9 variables.

      +---------------+-----------------------------------------------------+
      | ``ID``        | Patient ID code                                     |
      +---------------+-----------------------------------------------------+
      | ``Survive``   | ``1``\ =patient survived to discharge or            |
      |               | ``0``\ =patient died                                |
      +---------------+-----------------------------------------------------+
      | ``Age``       | Age (in years)                                      |
      +---------------+-----------------------------------------------------+
      | ``AgeGroup``  | ``1``\ = young (under 50), ``2``\ = middle (50-69), |
      |               | ``3`` = old (70+)                                   |
      +---------------+-----------------------------------------------------+
      | ``Sex``       | ``1``\ =female or ``0``\ =male                      |
      +---------------+-----------------------------------------------------+
      | ``Infection`` | ``1``\ =infection suspected or ``0``\ =no infection |
      +---------------+-----------------------------------------------------+
      | ``SysBP``     | Systolic blood pressure (in mm of Hg)               |
      +---------------+-----------------------------------------------------+
      | ``Pulse``     | Heart rate (beats per minute)                       |
      +---------------+-----------------------------------------------------+
      | ``Emergency`` | ``1``\ =emergency admission or ``0``\ =elective     |
      |               | admission                                           |
      +---------------+-----------------------------------------------------+
      |               |                                                     |
      +---------------+-----------------------------------------------------+

      .. rubric:: Details
         :name: details

      This dataset contains information for a sample of 200 patients who
      were part of a larger study conducted in a hospital's Intensive
      Care Unit (ICU). Since an ICU often deals with serious,
      life-threatening cases, a key variable to study is patient
      survival, which is coded in the Survive variable as 1 if the
      patient lived to be discharged and 0 if the patient died.

      .. rubric:: Source
         :name: source

      Data downloaded from The Data and Story Library (DASL),
      http://lib.stat.cmu.edu/DASL/Datafiles/ICU.html.
