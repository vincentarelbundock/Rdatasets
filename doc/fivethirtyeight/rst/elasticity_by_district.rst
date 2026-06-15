====================== ===============
elasticity_by_district R Documentation
====================== ===============

Political Elasticity Scores
---------------------------

Description
~~~~~~~~~~~

This folder contains the data behind the story 'Election Update: The
House Districts That Swing The Most (And Least) With The National Mood'
https://fivethirtyeight.com/features/election-update-the-house-districts-that-swing-the-most-and-least-with-the-national-mood/

Usage
~~~~~

.. code:: R

   elasticity_by_district

Format
~~~~~~

A dataset with 435 rows representing congressional districts and 2
variables

district
   congressional district

pvi_538
   pvi

Note
~~~~

The original dataset only has 2 columns: "district" and "elasticity". I
separated the "district" columns into two. For example, in row 1 of the
dataset, the original "district" = "MI-5", and I separated it into
“state" = "Michigan" and "district_number" = "5". In addition, I used
the full names for all states instead of abbreviations.

Source
~~~~~~

An elasticity score measures how sensitive a state or district it is to
changes in the national political environment.

See Also
~~~~~~~~

``elasticity_by_state``
