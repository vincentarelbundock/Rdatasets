.. container::

   ====== ===============
   return R Documentation
   ====== ===============

   .. rubric:: return
      :name: return

   .. rubric:: Description
      :name: description

   Wooldridge Source: Collected by Stephanie Balys, a former MSU
   undergraduate, from the New York Stock Exchange and Compustat. Data
   loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('return')

   .. rubric:: Format
      :name: format

   A data.frame with 142 observations on 12 variables:

   -  **roe:** return on equity, 1990

   -  **rok:** return on capital, 1990

   -  **dkr:** debt/capital, 1990

   -  **eps:** earnings per share, 1990

   -  **netinc:** net income, 1990 (mills.)

   -  **sp90:** stock price, end 1990

   -  **sp94:** stock price, end 1994

   -  **salary:** CEO salary, 1990 (thous.)

   -  **return:** percent change s.p., 90-94

   -  **lsalary:** log(salary)

   -  **lsp90:** log(sp90)

   -  **lnetinc:** log(netinc)

   .. rubric:: Notes
      :name: notes

   More can be done with this data set. Recently, I discovered that
   lsp90 does appear to predict return (and the log of the 1990 stock
   price works better than sp90). I am a little suspicious, but you
   could use the negative coefficient on lsp90 to illustrate “reversion
   to the mean.”

   Used in Text: page 162-163

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(return)
