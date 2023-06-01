.. container::

   ====== ===============
   Garcia R Documentation
   ====== ===============

   .. rubric:: Data from the sexism (protest) study of Garcia, Schmitt,
      Branscome, and Ellemers (2010)
      :name: Garcia

   .. rubric:: Description
      :name: description

   Garcia, Schmitt, Branscombe, and Ellemers (2010) report data for 129
   subjects on the effects of perceived sexism on anger and liking of
   women's reactions to ingroup members who protest discrimination. This
   data set is also used as the ‘protest’ data set by Hayes (2013 and
   2018). It is a useful example of mediation and moderation in
   regression. It may also be used as an example of plotting
   interactions.

   .. rubric:: Usage
      :name: usage

   ::

      data("GSBE")

   .. rubric:: Format
      :name: format

   A data frame with 129 observations on the following 6 variables.

   ``protest``
      0 = no protest, 1 = Individual Protest, 2 = Collective Protest

   ``sexism``
      Means of an 8 item Modern Sexism Scale.

   ``anger``
      Anger towards the target of discrimination. “I feel angry towards
      Catherine".

   ``liking``
      Mean rating of 6 liking ratings of the target.

   ``respappr``
      Mean of four items of appropriateness of the target's response.

   ``prot2``
      A recoding of protest into two levels (to match Hayes, 2013).

   .. rubric:: Details
      :name: details

   The reaction of women to women who protest discriminatory treatment
   was examined in an experiment reported by Garcia et al. (2010). 129
   women were given a description of sex discrimination in the workplace
   (a male lawyer was promoted over a clearly more qualified female
   lawyer). Subjects then read that the target lawyer felt that the
   decision was unfair. Subjects were then randomly assigned to three
   conditions: Control (no protest), Individual Protest (“They are
   treating me unfairly") , or Collective Protest (“The firm is is
   treating women unfairly").

   Participants were then asked how much they liked the target (liking),
   how angry they were to the target (anger) and to evaluate the
   appropriateness of the target's response (respappr).

   Garcia et al (2010) report a number of interactions (moderation
   effects) as well as moderated-mediation effects.

   This data set is used as an example in Hayes (2013) for moderated
   mediation. It is used here to show how to do moderation (interaction
   terms) in regression (see ``setCor``) , how to do moderated mediation
   (see ``mediate``) and how draw interaction graphs (see help).

   .. rubric:: Source
      :name: source

   The data were downloaded from the webpages of Andrew Hayes
   (https://www.afhayes.com/public/hayes2018data.zip) supporting the
   first and second edition of his book. The second edition includes 6
   variables, the first, just four. The protest variable in 2018 has
   three levels, but just two in the 2013 source.

   The data are used by kind permission of Donna M. Garcia, Michael T.
   Schmitt, Nyla R. Branscombe, and Naomi Ellemers.

   .. rubric:: References
      :name: references

   Garcia, Donna M. and Schmitt, Michael T. and Branscombe, Nyla R. and
   Ellemers, Naomi (2010). Women's reactions to ingroup members who
   protest discriminatory treatment: The importance of beliefs about
   inequality and response appropriateness. European Journal of Social
   Psychology, (40) 733-745.

   Hayes, Andrew F. (2013) Introduction to mediation, moderation, and
   conditional process analysis: A regression-based approach. Guilford
   Press.

   .. rubric:: Examples
      :name: examples

   ::

      data(GSBE)  #alias to Garcia data set

      ## Just do regressions with interactions
      setCor(respappr ~ prot2 * sexism,std=FALSE,data=Garcia,main="Moderated (mean centered )")
      setCor(respappr ~ prot2 * sexism,std=FALSE,data=Garcia,main="Moderated (don't center)", zero=FALSE)
      #demonstrate interaction plots
      plot(respappr ~ sexism, pch = 23- protest, bg = c("black","red", "blue")[protest], 
      data=Garcia, main = "Response to sexism varies as type of protest")
      by(Garcia,Garcia$protest, function(x) abline(lm(respappr ~ sexism,
         data =x),lty=c("solid","dashed","dotted")[x$protest+1])) 
      text(6.5,3.5,"No protest")
      text(3,3.9,"Individual")
      text(3,5.2,"Collective")

       
      #compare two models  (bootstrapping n.iter set to 50 for speed
      # 1) mean center the variables prior to taking product terms
      mod1 <- mediate(respappr ~ prot2 * sexism +(sexism),data=Garcia,n.iter=50
       ,main="Moderated mediation (mean centered)")
      # 2) do not mean center
      mod2 <- mediate(respappr ~ prot2 * sexism +(sexism),data=Garcia,zero=FALSE, n.iter=50,   
          main="Moderated  mediation (not centered")

      summary(mod1)
      summary(mod2)
