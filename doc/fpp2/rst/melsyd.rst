====== ===============
melsyd R Documentation
====== ===============

Total weekly air passenger numbers on Ansett airline flights between Melbourne and Sydney, 1987–1992.
-----------------------------------------------------------------------------------------------------

Description
~~~~~~~~~~~

Air traffic numbers are in thousands, and divided into first class,
business class and economy class. There was a major pilots' industrial
dispute during the data period resulting in some weeks with zero
traffic. There was also at least two changes in the definitions of
passenger classes.

Format
~~~~~~

Multiple time series of class ``mts``.

Source
~~~~~~

Ansett Airlines (which no longer exists).

Examples
~~~~~~~~

::


   autoplot(melsyd, facets=TRUE)

