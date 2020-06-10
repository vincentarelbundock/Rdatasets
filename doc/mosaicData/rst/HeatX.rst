===== ===============
HeatX R Documentation
===== ===============

Data from a heat exchanger laboratory
-------------------------------------

Description
~~~~~~~~~~~

These data were collected by engineering students at Calvin College. The
apparatus consists of concentric pipes insulated from the environment so
that as nearly as can be managed the only heat exchange is between the
hot and cold water.

Usage
~~~~~

::

   data(HeatX)

Format
~~~~~~

A data frame with 6 observations on the following variables.

-  ``trial`` trial number

-  ``T.cold.in`` temperature (C) of the cold water as it enters the
   apparatus

-  ``T.cold.out`` temperature (C) of the cold water as it leaves the
   apparatus

-  ``m.cold`` flow rate (L/min) of the cold water

-  ``T.hot.in`` temperature (C) of the hot water as it enters the
   apparatus

-  ``T.hot.out`` temperature (C) of the hot water as it leaves the
   apparatus

-  ``m.hot`` flow rate (L/min) of the hot water

Examples
~~~~~~~~

::

   # We can test for heat exchange with the environment by check to see if the 
   # heat gained by the cold water matches the heat lost by the hot water.
   C_p <- 4.182 / 60  # / 60 because measuring m in L/min
   HeatX2 <- transform(HeatX, 
                   Q.cold = m.cold * C_p * (T.cold.out - T.cold.in),
                   Q.hot= m.hot * C_p * (T.hot.out- T.hot.in)
   )
   HeatX2 <- transform(HeatX2, Q.env = Q.cold + Q.hot)
   if (require(ggformula)) {
     gf_jitter( "" ~ Q.env, data = HeatX2, alpha = 0.6, size = 4, 
       width = 0, height = 0.1, seed = 123) %>%
     gf_labs(y = "")
   }
   if (require(mosaic)) {
     t.test( ~Q.env, data = HeatX2 )
   }
