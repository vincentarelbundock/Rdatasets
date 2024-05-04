.. container::

   .. container::

      ============= ===============
      student_sleep R Documentation
      ============= ===============

      .. rubric:: Sleep for 110 students (simulated)
         :name: sleep-for-110-students-simulated

      .. rubric:: Description
         :name: description

      A simulated data set for how much 110 college students each slept
      in a single night.

      .. rubric:: Usage
         :name: usage

      ::

         student_sleep

      .. rubric:: Format
         :name: format

      A data frame with 110 observations on the following variable.

      hours
         Number of hours slept by this student (simulated).

      .. rubric:: Source
         :name: source

      Simulated data.

      .. rubric:: Examples
         :name: examples

      ::

         set.seed(2)
         x <- exp(c(
           rnorm(100, log(7.5), 0.15),
           rnorm(10, log(10), 0.196)
         ))
         x <- round(x - mean(x) + 7.42, 2)

         identical(x, student_sleep$hours)
