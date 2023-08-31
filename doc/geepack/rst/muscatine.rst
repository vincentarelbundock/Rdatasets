.. container::

   ========= ===============
   muscatine R Documentation
   ========= ===============

   .. rubric:: Data on Obesity from the Muscatine Coronary Risk Factor
      Study.
      :name: muscatine

   .. rubric:: Description
      :name: description

   The data are from the Muscatine Coronary Risk Factor (MCRF) study, a
   longitudinal survey of school-age children in Muscatine, Iowa. The
   MCRF study had the goal of examining the development and persistence
   of risk factors for coronary disease in children. In the MCRF study,
   weight and height measurements of five cohorts of children, initially
   aged 5-7, 7-9, 9-11, 11-13, and 13-15 years, were obtained biennially
   from 1977 to 1981. Data were collected on 4856 boys and girls. On the
   basis of a comparison of their weight to age-gender specific norms,
   children were classified as obese or not obese.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      muscatine

   .. rubric:: Format
      :name: format

   A dataframe with 14568 rows and 7 variables:

   id
      identifier of child.

   gender
      gender of child

   base_age
      baseline age

   age
      current age

   occasion
      identifier of occasion of recording

   obese
      'yes' or 'no'

   numobese
      obese in numerical form: 1 corresponds to 'yes' and 0 corresponds
      to 'no'.

   .. rubric:: Source
      :name: source

   https://content.sph.harvard.edu/fitzmaur/ala2e/muscatine.txt

   Woolson, R.F. and Clarke, W.R. (1984). Analysis of categorical
   incompletel longitudinal data. Journal of the Royal Statistical
   Society, Series A, 147, 87-99.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      muscatine$cage <- muscatine$age - 12                                         
      muscatine$cage2 <- muscatine$cage^2                                          
                                                                              
      f1 <- numobese ~ gender                                                 
      f2 <- numobese ~ gender + cage + cage2 +                                
          gender:cage + gender:cage2                                          
                                                                              
      gee1 <- geeglm(formula = f1, id = id,                                   
                     waves = occasion, data = muscatine, family = binomial(),      
                     corstr = "independence")                                 
                                                                              
      gee2 <- geeglm(formula = f2, id = id,                                   
                     waves = occasion, data = muscatine, family = binomial(),      
                     corstr = "independence")                                 
                                                                              
      tidy(gee1)                                                              
      tidy(gee2)                                                              
      QIC(gee1)
      QIC(gee2)
