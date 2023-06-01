.. container::

   ========== ===============
   polls_2008 R Documentation
   ========== ===============

   .. rubric:: Poll data for popular vote in 2008 presidential election
      :name: polls_2008

   .. rubric:: Description
      :name: description

   Data from different pollsters for the popular vote between Obama and
   McCain in the 2008 presidential election.

   .. rubric:: Usage
      :name: usage

   ::

      polls_2008

   .. rubric:: Format
      :name: format

   An object of class ``data.frame``.

   .. rubric:: Details
      :name: details

   -  day. Days until election day. Negative numbers are reported so
      that days can increase up to 0, which is election day.

   -  margin. Average difference between Obama and McCain for that day.

   .. rubric:: Source
      :name: source

   https://web.archive.org/web/20161108190914/http://www.pollster.com/08USPresGEMvO-2.html

   .. rubric:: Examples
      :name: examples

   ::

      with(polls_2008, plot(day, margin))
