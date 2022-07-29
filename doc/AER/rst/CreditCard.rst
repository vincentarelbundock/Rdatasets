.. container::

   ========== ===============
   CreditCard R Documentation
   ========== ===============

   .. rubric:: Expenditure and Default Data
      :name: expenditure-and-default-data

   .. rubric:: Description
      :name: description

   Cross-section data on the credit history for a sample of applicants
   for a type of credit card.

   .. rubric:: Usage
      :name: usage

   ::

      data("CreditCard")

   .. rubric:: Format
      :name: format

   A data frame containing 1,319 observations on 12 variables.

   card
      Factor. Was the application for a credit card accepted?

   reports
      Number of major derogatory reports.

   age
      Age in years plus twelfths of a year.

   income
      Yearly income (in USD 10,000).

   share
      Ratio of monthly credit card expenditure to yearly income.

   expenditure
      Average monthly credit card expenditure.

   owner
      Factor. Does the individual own their home?

   selfemp
      Factor. Is the individual self-employed?

   dependents
      Number of dependents.

   months
      Months living at current address.

   majorcards
      Number of major credit cards held.

   active
      Number of active credit accounts.

   .. rubric:: Details
      :name: details

   According to Greene (2003, p. 952) ``dependents`` equals
   ``1 + number of dependents``, our calculations suggest that it equals
   ``number of dependents``.

   Greene (2003) provides this data set twice in Table F21.4 and F9.1,
   respectively. Table F9.1 has just the observations, rounded to two
   digits. Here, we give the F21.4 version, see the examples for the
   F9.1 version. Note that ``age`` has some suspiciously low values
   (below one year) for some applicants. One of these differs between
   the F9.1 and F21.4 version.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003). Table F21.4.

   https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``

   .. rubric:: Examples
      :name: examples

   ::

      data("CreditCard")

      ## Greene (2003)
      ## extract data set F9.1
      ccard <- CreditCard[1:100,]
      ccard$income <- round(ccard$income, digits = 2)
      ccard$expenditure <- round(ccard$expenditure, digits = 2)
      ccard$age <- round(ccard$age + .01)
      ## suspicious:
      CreditCard$age[CreditCard$age < 1]
      ## the first of these is also in TableF9.1 with 36 instead of 0.5:
      ccard$age[79] <- 36

      ## Example 11.1
      ccard <- ccard[order(ccard$income),]
      ccard0 <- subset(ccard, expenditure > 0)
      cc_ols <- lm(expenditure ~ age + owner + income + I(income^2), data = ccard0)

      ## Figure 11.1
      plot(residuals(cc_ols) ~ income, data = ccard0, pch = 19)

      ## Table 11.1
      mean(ccard$age)
      prop.table(table(ccard$owner))
      mean(ccard$income)

      summary(cc_ols)
      sqrt(diag(vcovHC(cc_ols, type = "HC0")))
      sqrt(diag(vcovHC(cc_ols, type = "HC2"))) 
      sqrt(diag(vcovHC(cc_ols, type = "HC1")))

      bptest(cc_ols, ~ (age + income + I(income^2) + owner)^2 + I(age^2) + I(income^4), data = ccard0)
      gqtest(cc_ols)
      bptest(cc_ols, ~ income + I(income^2), data = ccard0, studentize = FALSE)
      bptest(cc_ols, ~ income + I(income^2), data = ccard0)

      ## More examples can be found in:
      ## help("Greene2003")
