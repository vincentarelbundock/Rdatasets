======= ===============
mail_me R Documentation
======= ===============

Influence of a Good Mood on Helpfulness
---------------------------------------

Description
~~~~~~~~~~~

This study investigated whether finding a coin influenced a person's
likelihood of mailing a sealed but addressed letter that appeared to
have been accidentally left in a conspicuous place. Several variables
were collected during the experiment, including two randomized variables
of whether there was a coin to be found and whether the letter already
had a stamp on it.

Usage
~~~~~

::

   mail_me

Format
~~~~~~

A data frame with 42 observations on the following 4 variables.

stamped
   a factor with levels ``no`` ``yes``

found_coin
   a factor with levels ``coin`` ``no_coin``

gender
   a factor with levels ``female`` ``male``

mailed_letter
   a factor with levels ``no`` ``yes``

Details
~~~~~~~

The precise context was in a phone booth (this study is from the
1970s!), where a person who entered a phone booth would find a dime in
the phone tray, which would be sufficient to pay for their phone call.
There was also a letter next to the phone, which sometimes had a stamp
on it.

Source
~~~~~~

Levin PF, Isen AM. 1975. Studies on the Effect of Feeling Good on
Helping. Sociometry 31(1), p141-147.

Examples
~~~~~~~~

::



   table(mail_me)
   (x <- table(mail_me[, c("mailed_letter", "found_coin")]))
   chisq.test(x)

   (x <- table(mail_me[, c("mailed_letter", "stamped")]))
   chisq.test(x)

   m <- glm(mailed_letter ~ stamped + found_coin + gender,
       data = mail_me,
       family = binomial)
   summary(m)
