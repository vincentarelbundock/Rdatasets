.. container::

   =========== ===============
   reliability R Documentation
   =========== ===============

   .. rubric:: Reliability data sets
      :name: reliability

   .. rubric:: Description
      :name: description

   A set of data for simple reliablility analyses, taken from the book
   by Meeker and Escobar.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(reliability, package="survival")

   .. rubric:: Details
      :name: details

   -  ``capacitor``: Data from a factorial experiment on the life of
      glass capacitors as a function of voltage and operating
      temperature. There were 8 capacitors at each combination of
      temperature and voltage. Testing at each combination was
      terminated after the fourth failure.

      -  ``temperature``: temperature in degrees celcius

      -  ``voltage``: applied voltage

      -  ``time``: time to failure

      -  ``status``: 1=failed, 0=censored

   -  ``cracks``: Data on the time until the development of cracks in a
      set of 167 identical turbine parts. The parts were inspected at 8
      selected times.

      -  day: time of inspection

      -  fail: number of fans found to have cracks, at this inspection

   -  Data set ``genfan``: Time to failure of 70 diesel engine fans.

      -  ``hours``: hours of service

      -  ``status``: 1=failure, 0=censored

      Data set ``ifluid``: A data frame with two variables describing
      the time to electrical breakdown of an insulating fluid.

      -  ``time``: hours to breakdown

      -  ``voltage``: test voltage in kV

   -  Data set ``imotor``: Breakdown of motor insulation as a function
      of temperature.

      -  temp: temperature of the test

      -  time: time to failure or censoring

      -  status: 0=censored, 1=failed

   -  Data set ``turbine``: Each of 432 turbine wheels was inspected
      once to determine whether a crack had developed in the wheel or
      not.

      -  hours: time of inspection (100s of hours)

      -  inspected: number that were inspected

      -  failed: number that failed

      Data set ``valveSeat``: Time to replacement of valve seats for 41
      diesel engines. More than one seat may be replaced at a particular
      service, leading to duplicate times in the data set. The final
      inspection time for each engine will have status=0.

      -  id: engine identifier

      -  time: time of the inspection, in days

      -  status: 1=replacement occured, 0= not

   .. rubric:: References
      :name: references

   Meeker and Escobar, Statistical Methods for Reliability Data, 1998.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      survreg(Surv(time, status) ~ temperature + voltage, capacitor)
