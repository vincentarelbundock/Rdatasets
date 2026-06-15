============================= ===============
rain, wavesurge and portpirie R Documentation
============================= ===============

Rain, wavesurge, portpirie and nidd datasets.
---------------------------------------------

Description
~~~~~~~~~~~

Rainfall, wave-surge, Port Pirie and River Nidd data sets.

Format
~~~~~~

The format of the rain data is: num [1:17531] 0 2.3 1.3 6.9 4.6 0 1 1.5
1.8 1.8 ...

The wave-surge data is bivariate and is used for testing functions in
``texmex``.

The Port Pirie data has two columns: 'Year' and 'SeaLevel'.

The River Nidd data represents 154 measurements of the level of the
River Nidd at Hunsingore Weir (Yorkshire, UK) between 1934 and 1969.
Each measurement breaches the threshold of $65 m^3/2$. Various authors
have analysed this dataset, as described by Papastathopoulos and
Tawn~egp, there being some apparent difficulty in identifying a
threshold above which GPD models are suitable.

Details
~~~~~~~

The rain, wave-surge and Port Pirie datasets are used by Coles and
appear in the ``ismev`` package. The River Nidd data appear in the
``evir`` package.

Source
~~~~~~

Copied from the ``ismev`` package and the ``evir`` package

References
~~~~~~~~~~

S. Coles, An Introduction to Statistical Modeling of Extreme Values,
Springer, 2001

I. Papastathopoulos and J. A. Tawn, Extended Generalised Pareto Models
for Tail Estimation, Journal of Statistical Planning and Inference, 143,
134 – 143, 2011
