.. container::

   ======= ===============
   email50 R Documentation
   ======= ===============

   .. rubric:: Sample of 50 emails
      :name: sample-of-50-emails

   .. rubric:: Description
      :name: description

   This is a subsample of the ``email`` data set.

   .. rubric:: Usage
      :name: usage

   ::

      email50

   .. rubric:: Format
      :name: format

   A data frame with 50 observations on the following 21 variables.

   spam
      Indicator for whether the email was spam.

   to_multiple
      Indicator for whether the email was addressed to more than one
      recipient.

   from
      Whether the message was listed as from anyone (this is usually set
      by default for regular outgoing email).

   cc
      Number of people cc'ed.

   sent_email
      Indicator for whether the sender had been sent an email in the
      last 30 days.

   time
      Time at which email was sent.

   image
      The number of images attached.

   attach
      The number of attached files.

   dollar
      The number of times a dollar sign or the word “dollar” appeared in
      the email.

   winner
      Indicates whether “winner” appeared in the email.

   inherit
      The number of times “inherit” (or an extension, such as
      “inheritance”) appeared in the email.

   viagra
      The number of times “viagra” appeared in the email.

   password
      The number of times “password” appeared in the email.

   num_char
      The number of characters in the email, in thousands.

   line_breaks
      The number of line breaks in the email (does not count text
      wrapping).

   format
      Indicates whether the email was written using HTML (e.g. may have
      included bolding or active links).

   re_subj
      Whether the subject started with “Re:”, “RE:”, “re:”, or “rE:”

   exclaim_subj
      Whether there was an exclamation point in the subject.

   urgent_subj
      Whether the word “urgent” was in the email subject.

   exclaim_mess
      The number of exclamation points in the email message.

   number
      Factor variable saying whether there was no number, a small number
      (under 1 million), or a big number.

   .. rubric:: Source
      :name: source

   David Diez's Gmail Account, early months of 2012. All personally
   identifiable information has been removed.

   .. rubric:: See Also
      :name: see-also

   ``email``

   .. rubric:: Examples
      :name: examples

   ::


      index <- c( 101,  105,  116,  162,  194,  211,  263,  308,  361,  374,
                  375,  465,  509,  513,  571,  691,  785,  842,  966,  968,
                 1051, 1201, 1251, 1433, 1519, 1727, 1760, 1777, 1899, 1920,
                 1943, 2013, 2052, 2252, 2515, 2629, 2634, 2710, 2823, 2835,
                 2944, 3098, 3227, 3360, 3452, 3496, 3530, 3665, 3786, 3877)
      order <- c(3, 33, 12, 1, 21, 15, 43, 49, 8, 6,
                 34, 25, 24, 35, 41, 9, 22, 50, 4, 48,
                 7, 14, 46, 10, 38, 32, 26, 18, 23, 45,
                 30, 16, 17, 20, 40, 47, 31, 37, 27, 11,
                 5, 44, 29, 19, 13, 36, 39, 42, 28, 2)
      d <- email[index, ][order, ]
      identical(d, email50)
