.. container::

   .. container::

      =========== ===============
      WorkersComp R Documentation
      =========== ===============

      .. rubric:: Workers Compensation
         :name: workers-compensation

      .. rubric:: Description
         :name: description

      Standard example in worker's compensation insurance, examining
      losses due to permanent, partial disability claims. The data are
      from Klugman (1992), who considers Bayesian model representations,
      and are originally from the National Council on Compensation
      Insurance. We consider n=121 occupation, or risk, classes, over
      T=7 years. To protect the data source, further information on the
      occupation classes and years is not available. Source: Frees, E.
      W., Young, V. and Y. Luo (2001). Case studies using panel data
      models. North American Actuarial Journal, 4, No. 4, 24-42.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(WorkersComp)

      .. rubric:: Format
         :name: format

      A data frame with 847 observations on the following 4 variables.

      ``CL``
         a numeric vector

      ``YR``
         a numeric vector

      ``PR``
         a numeric vector

      ``LOSS``
         a numeric vector

      .. rubric:: Details
         :name: details

      http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression

      DataDescriptions.pdf

      .. rubric:: Source
         :name: source

      http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression

      .. rubric:: References
         :name: references

      Frees E.W. (2010), Regression Modeling with Actuarial and
      Financial Applications, Cambridge University Press.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(WorkersComp)
         ## maybe str(WorkersComp) ; plot(WorkersComp) ...
