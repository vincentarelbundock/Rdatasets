========= ===============
fakeLogit R Documentation
========= ===============

Fake Data for a Logistic Regression
-----------------------------------

Description
~~~~~~~~~~~

This is a simple fake data set to illustrate a logistic regression.

Usage
~~~~~

::

   fakeLogit

Format
~~~~~~

A data frame with 10000 observations on the following 2 variables.

``x``
   a five-item functionally ordered categorical variable

``y``
   a binary variable that is either 0 or 1

Details
~~~~~~~

The data are generated such that the outcome ``y`` is a logistic
function of the ``x`` variable and come from a ``rbinom()`` call. The
estimated natural logged odds of ``y`` when ``x`` is 0 is -2.8. Each
unit increase in ``x`` is simulated to increase the natural logged odds
of ``y`` by 1.4. This example is very much patterned off a similar fake
data set that Pollock (2012) uses to teach about logistic regression. In
his case, ``x`` is a stand-in for hypothetical education categories and
``y`` is whether this fake person voted or not.
