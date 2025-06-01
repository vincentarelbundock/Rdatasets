.. container::

   .. container::

      ====== ===============
      AutoBi R Documentation
      ====== ===============

      .. rubric:: Automobile Bodily Injury Claims
         :name: automobile-bodily-injury-claims

      .. rubric:: Description
         :name: description

      Data from the Insurance Research Council (IRC), a division of the
      American Institute for Chartered Property Casualty Underwriters
      and the Insurance Institute of America. The data, collected in
      2002, contains information on demographic information about the
      claimant, attorney involvement and the economic loss (LOSS, in
      thousands), among other variables. We consider here a sample of n
      = 1; 340 losses from a single state. The full 2002 study contains
      over 70,000 closed claims based on data from thirty-two insurers.
      The IRC conducted similar studies in 1977, 1987, 1992 and 1997.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(AutoBi)

      .. rubric:: Format
         :name: format

      A data frame with 1340 observations on the following 8 variables.

      ``CASENUM``
         Case number to identify the claim, a numeric vector

      ``ATTORNEY``
         Whether the claimant is represented by an attorney (=1 if yes
         and =2 if no), a numeric vector

      ``CLMSEX``
         Claimant's gender (=1 if male and =2 if female), a numeric
         vector

      ``MARITAL``
         claimant's marital status (=1 if married, =2 if single, =3 if
         widowed, and =4 if divorced/separated), a numeric vector

      ``CLMINSUR``
         Whether or not the driver of the claimant's vehicle was
         uninsured (=1 if yes, =2 if no, and =3 if not applicable), a
         numeric vector

      ``SEATBELT``
         Whether or not the claimant was wearing a seatbelt/child
         restraint (=1 if yes, =2 if no, and =3 if not applicable), a
         numeric vector

      ``CLMAGE``
         Claimant's age, a numeric vector

      ``LOSS``
         The claimant's total economic loss (in thousands), a numeric
         vector

      .. rubric:: Details
         :name: details

      http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression%20Modeling/BookWebDec2010/

      DataDescriptions.pdf

      .. rubric:: Source
         :name: source

      http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression%20Modeling/BookWebDec2010/data.html

      .. rubric:: References
         :name: references

      Frees E.W. (2010), Regression Modeling with Actuarial and
      Financial Applications, Cambridge University Press.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(AutoBi)
         ## maybe str(AutoBi) ; plot(AutoBi) ...
