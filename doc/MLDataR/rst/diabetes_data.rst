============= ===============
diabetes_data R Documentation
============= ===============

Diabetes datasets
-----------------

Description
~~~~~~~~~~~

Diabetes datasets

Usage
~~~~~

.. code:: R

   diabetes_data

Format
~~~~~~

A data frame with 520 rows and 17 variables:

Age
   age of the patient presenting with diabetes

Gender
   gender of the patient with diabetes

ExcessUrination
   if the patient has a history of excessive urination

Polydipsia
   abnormal thurst, accompanied by the excessive intake of water or
   fluid

WeightLossSudden
   Sudden weight loss that has recently occured

Fatigue
   Fatigue or weakness

Polyphagia
   excessive or extreme hunger

GenitalThrush
   patient has thrush fungus on or near their genital region

BlurredVision
   history of blurred vision

Itching
   skin itching

Irritability
   general irritability and mood issues

DelayHealing
   delayed healing of wounds

PartialPsoriasis
   partial psoriasis on the body

MuscleStiffness
   stiffness of the muscles

Alopecia
   scalp alopecia and hair shedding

Obesity
   Classified as obese

DiabeticClass
   Class label to indicate whether the patient is diabetic or not

Source
~~~~~~

Collected by Gary Hutson hutsons-hacks@outlook.com, Dec-2021

Examples
~~~~~~~~

.. code:: R

   library(dplyr)
   data(diabetes_data)
   # Convert diabetes data to factor'
   diabetes_data <- diabetes_data %>%
    glimpse() %>%
    mutate(DiabeticClass = as.factor(DiabeticClass))
    is.factor(diabetes_data$DiabeticClass)
