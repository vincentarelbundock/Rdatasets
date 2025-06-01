.. container::

   .. container::

      ============= ===============
      AutoCollision R Documentation
      ============= ===============

      .. rubric:: Automobile UK Collision Claims
         :name: automobile-uk-collision-claims

      .. rubric:: Description
         :name: description

      This data is due to Mildenhall (1999). Mildenhall (1999)
      considered 8,942 collision losses from private passenger United
      Kingdom (UK) automobile insurance policies. The data were derived
      from Nelder and McCullagh (1989, Section 8.4.1) but originated
      from Baxter et al. (1980). We consider here a sample of n = 32 of
      Mildenhall data for eight driver types (age groups) and four
      vehicle classes (vehicle use). The average severity is in pounds
      sterling adjusted for inflation.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(AutoCollision)

      .. rubric:: Format
         :name: format

      A data frame with 32 observations on the following 4 variables.

      ``Age``
         Age of driver, a factor with levels ``A`` ``B`` ``C`` ``D``
         ``E`` ``F`` ``G`` ``H``

      ``Vehicle_Use``
         Purpose of the vehicle use: DriveShort means drive to work but
         less than 10 miles, DriveLong means drive to work but more than
         10 miles, a factor with levels ``Business`` ``DriveLong``
         ``DriveShort`` ``Pleasure``

      ``Severity``
         Average amount of claims (in pounds sterling), a numeric vector

      ``Claim_Count``
         Number of claims, a numeric vector

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

      Mildenhall S.J. (1999), A systematic relationship between minimum
      bias and generalized linear models, in: Proceedings of the
      Casualty Actuarial Society, 86, p. 393-487.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(AutoCollision)
         ## maybe str(AutoCollision) ; plot(AutoCollision) ...
