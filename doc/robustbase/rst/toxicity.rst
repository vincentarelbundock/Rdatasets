.. container::

   ======== ===============
   toxicity R Documentation
   ======== ===============

   .. rubric:: Toxicity of Carboxylic Acids Data
      :name: toxicity

   .. rubric:: Description
      :name: description

   The aim of the experiment was to predict the toxicity of carboxylic
   acids on the basis of several molecular descriptors.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(toxicity, package="robustbase")

   .. rubric:: Format
      :name: format

   A data frame with 38 observations on the following 10 variables which
   are attributes for carboxylic acids:

   ``toxicity``
      aquatic toxicity, defined as ``\log(IGC_{50}^{-1})``; typically
      the “response”.

   ``logKow``
      ``log Kow``, the partition coefficient

   ``pKa``
      pKa: the dissociation constant

   ``ELUMO``
      **E**\ nergy of the **l**\ owest **u**\ noccupied **m**\ olecular
      **o**\ rbital

   ``Ecarb``
      Electrotopological state of the **carb**\ oxylic group

   ``Emet``
      Electrotopological state of the **met**\ hyl group

   ``RM``
      Molar refractivity

   ``IR``
      Refraction index

   ``Ts``
      Surface tension

   ``P``
      Polarizability

   .. rubric:: Source
      :name: source

   The website accompanying the MMY-book:
   https://www.wiley.com/legacy/wileychi/robust_statistics/

   .. rubric:: References
      :name: references

   Maguna, F.P., Núñez, M.B., Okulik, N.B. and Castro, E.A. (2003)
   Improved QSAR analysis of the toxicity of aliphatic carboxylic acids;
   *Russian Journal of General Chemistry* **73**, 1792–1798.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(toxicity)
      summary(toxicity)
      plot(toxicity)
      plot(toxicity ~ pKa, data = toxicity)

      ## robustly scale the data (to scale 1) using Qn
      (scQ.tox <- sapply(toxicity, Qn))
      scTox <- scale(toxicity, center = FALSE, scale = scQ.tox)
      csT <- covOGK(scTox, n.iter = 2,
                    sigmamu = s_Qn, weight.fn = hard.rejection)
      as.dist(round(cov2cor(csT$cov), 2))
