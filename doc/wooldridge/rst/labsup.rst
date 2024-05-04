.. container::

   .. container::

      ====== ===============
      labsup R Documentation
      ====== ===============

      .. rubric:: labsup
         :name: labsup

      .. rubric:: Description
         :name: description

      Wooldridge Source: The subset of data for black or Hispanic women
      used in J.A. Angrist and W.E. Evans (1998) Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('labsup')

      .. rubric:: Format
         :name: format

      A data.frame with 31857 observations on 20 variables:

      -  **kids:** number of kids

      -  **morekids:** had more than 2 kids

      -  **boys2:** first two births boys

      -  **girls2:** first two births girls

      -  **boy1st:** first birth boy

      -  **boy2nd:** second birth boy

      -  **samesex:** first two kids are of same sex

      -  **multi2nd:** =1 if 2nd birth is twin

      -  **age:** age of mom

      -  **agefstm:** age of mom at first birth

      -  **black:** =1 of black

      -  **hispan:** =1 if hispanic

      -  **worked:** mom worked last year

      -  **weeks:** weeks worked mom

      -  **hours:** hours of work per week, mom

      -  **labinc:** mom's labor income, $1000s

      -  **faminc:** family income, $1000s

      -  **nonmomi:** 'non-mom' income, $1000s

      -  **educ:** mom's years of education

      -  **agesq:**

      .. rubric:: Notes
         :name: notes

      This example can promote an interesting discussion of instrument
      validity, and in particular, how a variable that is beyond our
      control – for example, whether the first two children have the
      same gender – can, nevertheless, affect subsequent economic
      choices. Students are asked to think about such issues in Computer
      Exercise C13 in Chapter 15. A more egregious version of this
      mistake would be to treat a variable such as age as a suitable
      instrument because it is beyond our control: clearly age has a
      direct effect on many economic outcomes that would play the role
      of the dependent variable.

      Used in Text: pages 530-531

      .. rubric:: Source
         :name: source

      http://www.cengage.com/c/introductory-econometrics-a-modern-approach-7e-wooldridge

      .. rubric:: Examples
         :name: examples

      ::

          str(labsup)
