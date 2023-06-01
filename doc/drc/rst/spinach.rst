.. container::

   ======= ===============
   spinach R Documentation
   ======= ===============

   .. rubric:: Inhibition of photosynthesis
      :name: spinach

   .. rubric:: Description
      :name: description

   Data from an experiment investigating the inhibition of
   photosynthesis in response to two synthetic photosystem II
   inhibitors, the herbicides diuron and bentazon. More specifically,
   the effect of oxygen consumption of thylakoid membranes
   (chloroplasts) from spinach was measured after incubation with the
   synthetic inhibitors in 5 assays, resulting in 5 dose-response
   curves.

   .. rubric:: Usage
      :name: usage

   ::

      data(spinach)

   .. rubric:: Format
      :name: format

   A data frame with 105 observations on the following four variables:

   CURVE
      a numeric vector specifying the assay or curve (a total of 5
      independent assays where used in this experiment).

   HERBICIDE
      a character vector specifying the herbicide applied: bentazon or
      diuron.

   DOSE
      a numeric vector giving the herbicide concentration in muMol.

   SLOPE
      a numeric vector with the measured response: oxygen consumption of
      thylakoid membranes.

   .. rubric:: Details
      :name: details

   The experiment is described in more details by Streibig (1998).

   .. rubric:: Source
      :name: source

   Streibig, J. C. (1998) Joint action of natural and synthetic
   photosystem II inhibitors, *Pesticide Science*, **55**, 137–146.

   .. rubric:: Examples
      :name: examples

   ::

      ## Displaying the first rows in the dataset
      head(spinach)  # displaying first 6 rows in the data set
