========== ===============
AutoClaims R Documentation
========== ===============

Automobile Insurance Claims
---------------------------

Description
~~~~~~~~~~~

Claims experience from a large midwestern (US) property and casualty
insurer for private passenger automobile insurance. The dependent
variable is the amount paid on a closed claim, in (US) dollars (claims
that were not closed by year end are handled separately). Insurers
categorize policyholders according to a risk classification system. This
insurer's risk classification system is based on automobile operator
characteristics and vehicle characteristics, and these factors are
summarized by the risk class categorical variable CLASS.

Usage
~~~~~

.. code:: R

   data(AutoClaims)

Format
~~~~~~

A data frame with 6773 observations on the following 5 variables.

``STATE``
   Codes 01 to 17 used, with each code randomly assigned to an actual
   individual state, a factor with levels ``STATE 01`` ``STATE 02``
   ``STATE 03`` ``STATE 04`` ``STATE 06`` ``STATE 07`` ``STATE 10``
   ``STATE 11`` ``STATE 12`` ``STATE 13`` ``STATE 14`` ``STATE 15``
   ``STATE 17``

``CLASS``
   Rating class of operator, based on age, gender, marital status, use
   of vehicle, a factor with levels ``C1`` ``C11`` ``C1A`` ``C1B``
   ``C1C`` ``C2`` ``C6`` ``C7`` ``C71`` ``C72`` ``C7A`` ``C7B`` ``C7C``
   ``F1`` ``F11`` ``F6`` ``F7`` ``F71``

``GENDER``
   a factor with levels ``F`` ``M``

``AGE``
   Age of operator, a numeric vector

``PAID``
   Amount paid to settle and close a claim, a numeric vector

Details
~~~~~~~

http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression%20Modeling/BookWebDec2010/

DataDescriptions.pdf

Source
~~~~~~

http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression%20Modeling/BookWebDec2010/data.html

References
~~~~~~~~~~

Frees E.W. (2010), Regression Modeling with Actuarial and Financial
Applications, Cambridge University Press.

Examples
~~~~~~~~

.. code:: R

   data(AutoClaims)
   ## maybe str(AutoClaims) ; plot(AutoClaims) ...
