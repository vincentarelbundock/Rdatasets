.. container::

   .. container::

      ======= ===============
      smoking R Documentation
      ======= ===============

      .. rubric:: UK Smoking Data
         :name: uk-smoking-data

      .. rubric:: Description
         :name: description

      Survey data on smoking habits from the UK. The data set can be
      used for analyzing the demographic characteristics of smokers and
      types of tobacco consumed.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         smoking

      .. rubric:: Format
         :name: format

      A data frame with 1691 observations on the following 12 variables.

      gender
         Gender with levels ``Female`` and ``Male``.

      age
         Age.

      marital_status
         Marital status with levels ``Divorced``, ``Married``,
         ``Separated``, ``Single`` and ``Widowed``.

      highest_qualification
         Highest education level with levels ``A Levels``, ``Degree``,
         ``GCSE/CSE``, ``GCSE/O Level``, ``Higher/Sub Degree``,
         ``No Qualification``, ``ONC/BTEC`` and ``Other/Sub Degree``

      nationality
         Nationality with levels ``British``, ``English``, ``Irish``,
         ``Scottish``, ``Welsh``, ``Other``, ``Refused`` and
         ``Unknown``.

      ethnicity
         Ethnicity with levels ``Asian``, ``Black``, ``Chinese``,
         ``Mixed``, ``White`` and ``Refused`` ``Unknown``.

      gross_income
         Gross income with levels ``Under 2,600``, ``2,600 to 5,200``,
         ``5,200 to 10,400``, ``10,400 to 15,600``,
         ``15,600 to 20,800``, ``20,800 to 28,600``,
         ``28,600 to 36,400``, ``Above 36,400``, ``Refused`` and
         ``Unknown``.

      region
         Region with levels ``London``, ``Midlands & East Anglia``,
         ``Scotland``, ``South East``, ``South West``, ``The North`` and
         ``Wales``

      smoke
         Smoking status with levels ``No`` and ``Yes``

      amt_weekends
         Number of cigarettes smoked per day on weekends.

      amt_weekdays
         Number of cigarettes smoked per day on weekdays.

      type
         Type of cigarettes smoked with levels ``Packets``,
         ``Hand-Rolled``, ``Both/Mainly Packets`` and
         ``Both/Mainly Hand-Rolled``

      .. rubric:: Source
         :name: source

      National STEM Centre, Large Datasets from stats4schools,
      https://www.stem.org.uk/resources/elibrary/resource/28452/large-datasets-stats4schools.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)

         ggplot(smoking, aes(x = amt_weekends)) +
           geom_histogram(binwidth = 5)

         ggplot(smoking, aes(x = amt_weekdays)) +
           geom_histogram(binwidth = 5)

         ggplot(smoking, aes(x = gender, fill = smoke)) +
           geom_bar(position = "fill")

         ggplot(smoking, aes(x = marital_status, fill = smoke)) +
           geom_bar(position = "fill")
