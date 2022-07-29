.. container::

   ================= ===============
   loans_full_schema R Documentation
   ================= ===============

   .. rubric:: Loan data from Lending Club
      :name: loan-data-from-lending-club

   .. rubric:: Description
      :name: description

   This data set represents thousands of loans made through the Lending
   Club platform, which is a platform that allows individuals to lend to
   other individuals. Of course, not all loans are created equal.
   Someone who is a essentially a sure bet to pay back a loan will have
   an easier time getting a loan with a low interest rate than someone
   who appears to be riskier. And for people who are very risky? They
   may not even get a loan offer, or they may not have accepted the loan
   offer due to a high interest rate. It is important to keep that last
   part in mind, since this data set only represents loans actually
   made, i.e. do not mistake this data for loan applications!

   .. rubric:: Usage
      :name: usage

   ::

      loans_full_schema

   .. rubric:: Format
      :name: format

   A data frame with 10,000 observations on the following 55 variables.

   emp_title
      Job title.

   emp_length
      Number of years in the job, rounded down. If longer than 10 years,
      then this is represented by the value ``10``.

   state
      Two-letter state code.

   homeownership
      The ownership status of the applicant's residence.

   annual_income
      Annual income.

   verified_income
      Type of verification of the applicant's income.

   debt_to_income
      Debt-to-income ratio.

   annual_income_joint
      If this is a joint application, then the annual income of the two
      parties applying.

   verification_income_joint
      Type of verification of the joint income.

   debt_to_income_joint
      Debt-to-income ratio for the two parties.

   delinq_2y
      Delinquencies on lines of credit in the last 2 years.

   months_since_last_delinq
      Months since the last delinquency.

   earliest_credit_line
      Year of the applicant's earliest line of credit

   inquiries_last_12m
      Inquiries into the applicant's credit during the last 12 months.

   total_credit_lines
      Total number of credit lines in this applicant's credit history.

   open_credit_lines
      Number of currently open lines of credit.

   total_credit_limit
      Total available credit, e.g. if only credit cards, then the total
      of all the credit limits. This excludes a mortgage.

   total_credit_utilized
      Total credit balance, excluding a mortgage.

   num_collections_last_12m
      Number of collections in the last 12 months. This excludes medical
      collections.

   num_historical_failed_to_pay
      The number of derogatory public records, which roughly means the
      number of times the applicant failed to pay.

   months_since_90d_late
      Months since the last time the applicant was 90 days late on a
      payment.

   current_accounts_delinq
      Number of accounts where the applicant is currently delinquent.

   total_collection_amount_ever
      The total amount that the applicant has had against them in
      collections.

   current_installment_accounts
      Number of installment accounts, which are (roughly) accounts with
      a fixed payment amount and period. A typical example might be a
      36-month car loan.

   accounts_opened_24m
      Number of new lines of credit opened in the last 24 months.

   months_since_last_credit_inquiry
      Number of months since the last credit inquiry on this applicant.

   num_satisfactory_accounts
      Number of satisfactory accounts.

   num_accounts_120d_past_due
      Number of current accounts that are 120 days past due.

   num_accounts_30d_past_due
      Number of current accounts that are 30 days past due.

   num_active_debit_accounts
      Number of currently active bank cards.

   total_debit_limit
      Total of all bank card limits.

   num_total_cc_accounts
      Total number of credit card accounts in the applicant's history.

   num_open_cc_accounts
      Total number of currently open credit card accounts.

   num_cc_carrying_balance
      Number of credit cards that are carrying a balance.

   num_mort_accounts
      Number of mortgage accounts.

   account_never_delinq_percent
      Percent of all lines of credit where the applicant was never
      delinquent.

   tax_liens
      a numeric vector

   public_record_bankrupt
      Number of bankruptcies listed in the public record for this
      applicant.

   loan_purpose
      The category for the purpose of the loan.

   application_type
      The type of application: either ``individual`` or ``joint``.

   loan_amount
      The amount of the loan the applicant received.

   term
      The number of months of the loan the applicant received.

   interest_rate
      Interest rate of the loan the applicant received.

   installment
      Monthly payment for the loan the applicant received.

   grade
      Grade associated with the loan.

   sub_grade
      Detailed grade associated with the loan.

   issue_month
      Month the loan was issued.

   loan_status
      Status of the loan.

   initial_listing_status
      Initial listing status of the loan. (I think this has to do with
      whether the lender provided the entire loan or if the loan is
      across multiple lenders.)

   disbursement_method
      Dispersement method of the loan.

   balance
      Current balance on the loan.

   paid_total
      Total that has been paid on the loan by the applicant.

   paid_principal
      The difference between the original loan amount and the current
      balance on the loan.

   paid_interest
      The amount of interest paid so far by the applicant.

   paid_late_fees
      Late fees paid by the applicant.

   .. rubric:: Source
      :name: source

   This data comes from Lending Club
   (https://www.lendingclub.com/info/statistics.action), which provides
   a very large, open set of data on the people who received loans
   through their platform.

   .. rubric:: Examples
      :name: examples

   ::

      loans_full_schema
