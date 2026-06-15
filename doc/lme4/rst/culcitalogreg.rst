============= ===============
culcitalogreg R Documentation
============= ===============

Coral-eating seastar Culcita novaeguineae data (binary predation version)
-------------------------------------------------------------------------

Description
~~~~~~~~~~~

This data shows the results from a block design experiment to record the
interactions of ‘guard’ crustaceans, shrimp (*Alpheus lottini*) and crab
(*Trapezia serenei*), that defend their coral host (*Pocillopora cf.
meandrina*) from seastar predators (*Culcita novaeguineae*) (McKeon et
al. 2012). The coral and their seastar predator were placed in large,
octagonal, flow-through seawater tanks measuring approximately 0.5m deep
and 2m in diameter. There were 10 tanks in total, each serving as an
experimental block. Four treatment groups were tested: (1) no
exosymbionts, (2) shrimp only, (3) crab only, and (4) both crab and
shrimp present. Each treatment was replicated twice within each block.

Usage
~~~~~

.. code:: R

   data("culcitalogreg")

Format
~~~~~~

A data frame with 80 observations on the following 9 variables.

``block``
   a numeric variable indicating the experimental block. There are
   ``10`` blocks in total, each corresponding to a large, octagonal,
   flow-through seawater tank approximately 0.5m deep and 2m in
   diameter.

``ttt``
   a number which represents the combinations of different symbionts.

   - ``1``: no exosymbionts,

   - ``2``: pair of *Alpheus lottini* only (Alpheus; shrimp),

   - ``3``: pair of *Trapezia serenei* only (Trapezia; crab),

   - ``4``: pair of *Alpheus lottini* and pair of *Trapezia serenei*
     (‘Alpheus and Trapezia’).

``predation``
   (binary) indicates whether the seastar predator consumed the coral.
   ``0`` = did not eat; ``1`` = ate.

``ttt.1``
   a relabelled version of ``ttt`` that explicitly indicates the
   corresponding treatment condition in plain language.

``crab``
   describes whether the crab was present in the experiment. ``C-``: not
   present, ``C+``: present.

``shrimp``
   describes whether the shrimp was present in the experiment. ``S-``:
   not present, ``S+``: present.

``ttt2``
   a relabelled version of ``ttt`` that uses letters (a, b, c, d)
   instead of numeric values (1, 2, 3, 4), respectively, to represent
   the treatment groups.

``crab2``
   a relabelling of ``crab`` where ``n`` corresponds to ``C-`` (no
   crab), and ``y`` corresponds to ``C+`` (crab present).

``shrimp2``
   a relabelling of ``shrimp`` where ``n`` corresponds to ``S-`` (no
   shrimp), and ``y`` corresponds to ``S+`` (shrimp present).

Details
~~~~~~~

Full details of the experiment (McKeon et al. 2012), is quoted below:
"Twenty replicates in total were conducted for each exosymbiont
treatment in a temporally blocked design with two replicates in each of
ten temporal blocks. Trials were conducted in a large octagonal
flow-through seawater tank approximately 0.5 m deep and 2 m across. The
tank was divided into eight equal sections using plastic screening. Each
section was provisioned with a seastar refugium constructed from
concrete blocks. We placed Pocillopora colonies into the tank from the
field during mid- to late afternoon. To minimize variation driven by
search time, a single Culcita was placed directly on top of the coral
colony. The following morning, we measured the coral size (length,
width, height) and the feeding scars left by the Culcita (length, width,
depth)."

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

The version which only contains predation counts but includes the amount
of volume of the coral and the amount of volume lost,
``culcitalvolume``.

Examples
~~~~~~~~

.. code:: R

   cul_mod <- glmer(predation ~ ttt2 + (1|block), data=culcitalogreg,
                        family = binomial(link = "logit"))
