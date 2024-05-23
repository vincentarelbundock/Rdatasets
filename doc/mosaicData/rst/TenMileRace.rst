.. container::

   .. container::

      =========== ===============
      TenMileRace R Documentation
      =========== ===============

      .. rubric:: Cherry Blossom Race
         :name: cherry-blossom-race

      .. rubric:: Description
         :name: description

      The Cherry Blossom 10 Mile Run is a road race held in Washington,
      D.C. in April each year. (The name comes from the famous cherry
      trees that are in bloom in April in Washington.) The results of
      this race are published. This data frame contains the results from
      the 2005 race.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(TenMileRace)

      .. rubric:: Format
         :name: format

      A data frame with 8636 observations on the following variables.

      ``state``
         State of residence of runner.

      ``time``
         Official time from starting gun to finish line.

      ``net``
         The recorded time (in seconds) from when the runner crossed the
         starting line to when the runner crossed the finish line. This
         is generally less than the official time because of the large
         number of runners in the race: it takes time to reach the
         starting line after the gun has gone off.

      ``age``
         Age of runner in years.

      ``sex``
         A factor with levels ``F`` ``M``.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(TenMileRace)
         if (require(ggformula)) {
           gf_point(net ~ age | sex, data = TenMileRace, color = ~sex, alpha = 0.1) |>
           gf_density2d(color = "gray40")
           lm(net ~ age + sex, data = TenMileRace)
         }
