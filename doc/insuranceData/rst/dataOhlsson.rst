.. container::

   .. container::

      =========== ===============
      dataOhlsson R Documentation
      =========== ===============

      .. rubric:: Motorcycle Insurance
         :name: motorcycle-insurance

      .. rubric:: Description
         :name: description

      The data for this case study comes from the former Swedish
      insurance company Wasa, and concerns partial casco insurance, for
      motorcycles this time. It contains aggregated data on all
      insurance policies and claims during 1994-1998; the reason for
      using this rather old data set is confidentiality; more recent
      data for ongoing business can not be disclosed.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(dataOhlsson)

      .. rubric:: Format
         :name: format

      A data frame with 64548 observations on the following 9 variables.

      ``agarald``
         The owners age, between 0 and 99, a numeric vector

      ``kon``
         The owners age, between 0 and 99, a factor with levels ``K``
         ``M``

      ``zon``
         Geographic zone numbered from 1 to 7, in a standard
         classification of all Swedish parishes, a numeric vector

      ``mcklass``
         MC class, a classification by the so called EV ratio, defined
         as (Engine power in kW x 100) / (Vehicle weight in kg + 75),
         rounded to the nearest lower integer. The 75 kg represent the
         average driver weight. The EV ratios are divided into seven
         classes, a numeric vector

      ``fordald``
         Vehicle age, between 0 and 99, a numeric vector

      ``bonuskl``
         Bonus class, taking values from 1 to 7. A new driver starts
         with bonus class 1; for each claim-free year the bonus class is
         increased by 1. After the first claim the bonus is decreased by
         2; the driver can not return to class 7 with less than 6
         consecutive claim free years, a numeric vector

      ``duration``
         the number of policy years, a numeric vector

      ``antskad``
         the number of claims, a numeric vector

      ``skadkost``
         the claim cost, a numeric vector

      .. rubric:: Details
         :name: details

      The dataset "mccase.txt"

      .. rubric:: Source
         :name: source

      http://people.su.se/~esbj/GLMbook/case.html

      .. rubric:: References
         :name: references

      Ohlsson E., Johansson B. (2010), Non-life insurance pricing with
      generalized linear models, Springer

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(dataOhlsson)
         ## maybe str(dataOhlsson) ; plot(dataOhlsson) ...
