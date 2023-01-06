.. container::

   ========== ===============
   Earthquake R Documentation
   ========== ===============

   .. rubric:: Earthquake Intensity
      :name: earthquake-intensity

   .. rubric:: Description
      :name: description

   The ``Earthquake`` data frame has 182 rows and 5 columns.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Quake
      an ordered factor with levels ``20`` < ``16`` < ``14`` < ``10`` <
      ``3`` < ``8`` < ``23`` < ``22`` < ``6`` < ``13`` < ``7`` < ``21``
      < ``18`` < ``15`` < ``4`` < ``12`` < ``19`` < ``5`` < ``9`` <
      ``1`` < ``2`` < ``17`` < ``11`` indicating the earthquake on which
      the measurements were made.

   Richter
      a numeric vector giving the intensity of the earthquake on the
      Richter scale.

   distance
      the distance from the seismological measuring station to the
      epicenter of the earthquake (km).

   soil
      a factor with levels ``0`` and ``1`` giving the soil condition at
      the measuring station, either soil or rock.

   accel
      maximum horizontal acceleration observed (g).

   .. rubric:: Details
      :name: details

   Measurements recorded at available seismometer locations for 23 large
   earthquakes in western North America between 1940 and 1980. They were
   originally given in Joyner and Boore (1981); are mentioned in
   Brillinger (1987); and are analyzed in Davidian and Giltinan (1995).

   .. rubric:: Source
      :name: source

   Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in S
   and S-PLUS*, Springer, New York. (Appendix A.8)

   Davidian, M. and Giltinan, D. M. (1995), *Nonlinear Models for
   Repeated Measurement Data*, Chapman and Hall, London.

   Joyner and Boore (1981), Peak horizontal acceleration and velocity
   from strong-motion records including records from the 1979 Imperial
   Valley, California, earthquake, *Bulletin of the Seismological
   Society of America*, **71**, 2011-2038.

   Brillinger, D. (1987), Comment on a paper by C. R. Rao, *Statistical
   Science*, **2**, 448-450.
