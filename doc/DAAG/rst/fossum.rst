====== ===============
fossum R Documentation
====== ===============

Female Possum Measurements
--------------------------

Description
~~~~~~~~~~~

The ``fossum`` data frame consists of nine morphometric measurements on
each of 43 female mountain brushtail possums, trapped at seven sites
from Southern Victoria to central Queensland. This is a subset of the
``possum`` data frame.

Usage
~~~~~

::

   fossum

Format
~~~~~~

This data frame contains the following columns:

case
   observation number

site
   one of seven locations where possums were trapped

Pop
   a factor which classifies the sites as ``Vic`` Victoria, ``other``
   New South Wales or Queensland

sex
   a factor with levels ``f`` female, ``m`` male

age
   age

hdlngth
   head length

skullw
   skull width

totlngth
   total length

taill
   tail length

footlgth
   foot length

earconch
   ear conch length

eye
   distance from medial canthus to lateral canthus of right eye

chest
   chest girth (in cm)

belly
   belly girth (in cm)

Source
~~~~~~

Lindenmayer, D. B., Viggers, K. L., Cunningham, R. B., and Donnelly, C.
F. 1995. Morphological variation among columns of the mountain brushtail
possum, Trichosurus caninus Ogilby (Phalangeridae: Marsupiala).
Australian Journal of Zoology 43: 449-458.

Examples
~~~~~~~~

::

   boxplot(fossum$totlngth)
