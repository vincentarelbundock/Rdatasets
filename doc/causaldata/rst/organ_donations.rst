=============== ===============
organ_donations R Documentation
=============== ===============

Organ Donation Data
-------------------

Description
~~~~~~~~~~~

The ``organ_donation`` data contains data from Kessler and Roth (2014)
on organ donation rates by state and quarter. The state of California
enacted an active-choice phrasing for their organ donation sign-up
questoin in Q32011. The only states included in the data are California
and those that can serve as valid controls; see Kessler and Roth (2014).

Usage
~~~~~

::

   organ_donations

Format
~~~~~~

A data frame with 162 rows and 3 variables

State
   The state, where California is the Treated group

Quarter
   Quarter of observation, in "Q"QYYYY format

Rate
   Organ donation rate

Quarter_Num
   Quarter of observation in numerical format. 1 = Quarter 4, 2010

Details
~~~~~~~

This data is used in the *Difference-in-Differences* chapter of *The
Effect*.

Source
~~~~~~

Kessler, J.B. and Roth, A.E., 2014. Don't take 'no' for an answer: An
experiment with actual organ donor registrations. National Bureau of
Economic Research working paper No. 20378.
https://www.nber.org/papers/w20378

References
~~~~~~~~~~

Huntington-Klein. 2021. The Effect: An Introduction to Research Design
and Causality. https://theeffectbook.net.
