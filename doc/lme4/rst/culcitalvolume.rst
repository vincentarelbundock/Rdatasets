============== ===============
culcitalvolume R Documentation
============== ===============

Coral-eating seastar Culcita novaeguineae data (volume loss version)
--------------------------------------------------------------------

Description
~~~~~~~~~~~

This is the same experiment outlined in ``culcitalogreg`` except this
data set only contains values where predation occurred, and the original
volume as well as volume lost was recorded.

Usage
~~~~~

.. code:: R

   data("culcitalvolume")

Format
~~~~~~

A data frame with 50 observations on the following 7 variables.

``ttt``
   represents the combinations of different symbionts, which the
   treatment condition is explicitly written in plain language.

``volume``
   describes the size of the coral, measured in cm\ ``^3``.

``predvolume``
   the amount of volume loss from the coral, measured in cm\ ``^3``.

``crab``
   describes whether the crab was present in the experiment. ``n``: not
   present, ``y``: present.

``shrimp``
   describes whether the shrimp was present in the experiment. ``n``:
   not present, ``y``: present.

``block``
   a numeric variable indicating the experimental block. There are
   ``10`` blocks in total, each corresponding to a large, octagonal,
   flow-through seawater tank approximately 0.5m deep and 2m in
   diameter.

``ttt2``
   a relabelled version of ``ttt``.

   - ``1``: no exosymbionts,

   - ``2``: pair of *Alpheus lottini* only (Alpheus; shrimp),

   - ``3``: pair of *Trapezia serenei* only (Trapezia; crab),

   - ``4``: pair of *Alpheus lottini* and pair of *Trapezia serenei*
     (‘Alpheus and Trapezia’).

Source
~~~~~~

(McKeon et al. 2012)

References
~~~~~~~~~~

McKeon CS, Stier AC, McIlroy SE, Bolker BM (2012). “Multiple defender
effects: synergistic coral defense by mutualist crustaceans.”
*Oecologia*, **169**\ (4), 1095–1103.
`doi:10.1007/s00442-012-2275-2 <https://doi.org/10.1007/s00442-012-2275-2>`__.

See Also
~~~~~~~~

The version which contains whether or not predation occurred,
``culcitalogreg``.

Examples
~~~~~~~~

.. code:: R

   ## Modifying to create a new response variable
   vdata <- transform(culcitalvolume, 
                      propeaten = predvolume/volume,
                      tvol = log(predvolume))
   ## One-way analysis
   (cvm1 <- lmer(tvol ~ ttt2 + (1|block), data = vdata))
   (cvm2 <- lmer(propeaten ~ ttt2 + (1|block), data = vdata))
   ## Two-way analysis 
   (cvm3 <- lmer(tvol ~ crab*shrimp + (1|block), data = vdata))
   (cvm4 <- lmer(propeaten ~ crab*shrimp + (1|block), data = vdata))
