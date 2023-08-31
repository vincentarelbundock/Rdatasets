.. container::

   ========== ===============
   big9salary R Documentation
   ========== ===============

   .. rubric:: big9salary
      :name: big9salary

   .. rubric:: Description
      :name: description

   Wooldridge Source: O. Baser and E. Pema (2003), “The Return of
   Publications for Economics Faculty,” Economics Bulletin 1, 1-13.
   Professors Baser and Pema kindly provided the data. Data loads
   lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('big9salary')

   .. rubric:: Format
      :name: format

   A data.frame with 786 observations on 30 variables:

   -  **id:** person identifier

   -  **year:** 92, 95, or 99

   -  **salary:** annual salary, $

   -  **pubindx:** publication index

   -  **totpge:** standardized total article pages

   -  **assist:** =1 if assistant professor

   -  **assoc:** =1 if associate professor

   -  **prof:** =1 if full professor

   -  **chair:** =1 if department chair

   -  **top20phd:** =1 if Ph.D. from top 20 dept.

   -  **yearphd:** year Ph.D. obtained

   -  **female:** =1 if female

   -  **osu:** =1 if Ohio State U.

   -  **iowa:** =1 if U. Iowa

   -  **indiana:** =1 if Indiana U.

   -  **purdue:** =1 if Purdue U.

   -  **msu:** =1 if Michigan State U.

   -  **minn:** =1 if U. Minnesota

   -  **mich:** =1 if U. Michigan

   -  **wisc:** =1 if U. Wisconsin

   -  **illinois:** =1 if U. Illinois

   -  **y92:** =1 if year == 92

   -  **y95:** =1 if year == 95

   -  **y99:** =1 if year == 99

   -  **lsalary:** log(salary)

   -  **exper:** years since first teaching job

   -  **expersq:** exper^2

   -  **pubindxsq:** pubindx^2

   -  **pubindx0:** =1 if pubindx == 0

   -  **lpubindx:** log(pubindx) if pubindx > 0

   .. rubric:: Notes
      :name: notes

   This is an unbalanced panel data set in the sense that as many as
   three years of data are available for each faculty member but where
   some have fewer than three years. It is not clear that something like
   a fixed effects or first differencing analysis makes sense: in
   effect, approaches that remove the heterogeneity control for too much
   by controlling for unobserved heterogeneity which, in this case,
   includes faculty intelligence, talent, and motivation. Presumably
   these factors enter into the publication index. It is hard to think
   we want to hold the main factors driving productivity fixed when
   trying to measure the effect of productivity on salary. Pooled OLS
   regression with “cluster robust” standard errors seems more natural.
   On the other hand, if we want to measure the return to having a
   degree from a top 20 Ph.D. program then we would want to control for
   factors that cause selection into a top 20 program. Unfortunately,
   this variable does not change over time, and so FD and FE are not
   applicable.

   Used in Text: not used

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(big9salary)
