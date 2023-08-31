.. container::

   ===== ===============
   waves R Documentation
   ===== ===============

   .. rubric:: Electricity from Wave Power at Sea
      :name: waves

   .. rubric:: Description
      :name: description

   Measurements of root mean square bending moment by two different
   mooring methods.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("waves")

   .. rubric:: Format
      :name: format

   A data frame with 18 observations on the following 2 variables.

   method1
      Root mean square bending moment in Newton metres, mooring method 1

   method2
      Root mean square bending moment in Newton metres, mooring method 2

   .. rubric:: Details
      :name: details

   In a design study for a device to generate electricity from wave
   power at sea, experiments were carried out on scale models in a wave
   tank to establish how the choice of mooring method for the system
   affected the bending stress produced in part of the device. The wave
   tank could simulate a wide range of sea states and the model system
   was subjected to the same sample of sea states with each of two
   mooring methods, one of which was considerably cheaper than the
   other. The question of interest is whether bending stress differs for
   the two mooring methods.

   .. rubric:: Source
      :name: source

   D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski
   (1994). *A Handbook of Small Datasets*, Chapman and Hall/CRC, London.

   .. rubric:: Examples
      :name: examples

   .. code:: R

        data("waves", package = "HSAUR")
        plot(method1 ~ method2, data = waves)
