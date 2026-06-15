============ ===============
Playfair1824 R Documentation
============ ===============

Playfair's Linear Chronology
----------------------------

Description
~~~~~~~~~~~

Data from William Playfair's (1824) last graph, titled "Linear
Chronology, Exhibiting the Revenues, Expenditure, Debt, Price of Stocks
and Bread, from 1770 to 1824". The chart tracks multiple economic
variables, including national debt, exports, imports, revenue,
expenditure, the price of stocks, and the price of bread over a 154 year
time span.

Usage
~~~~~

.. code:: R

   data("Playfair1824")

Format
~~~~~~

A data frame with 55 observations on the following 9 variables.

``Year``
   numeric, a numeric vector

``Stocks``
   Price of Stocks (Pounds per 3% consol bond), a numeric vector

``Wheat``
   Price of Wheat (Shillings per quarter), a numeric vector

``Bread``
   Price of Bread (Farthings per quarter-loaf), a numeric vector

``Debt``
   National debt (Tens of millions of pounds), a numeric vector

``Exports``
   Exports (Millions of pounds), a numeric vector

``Imports``
   Imports (Millions of pounds), a numeric vector

``Expenditure``
   Expenditure (Millions of pounds), a numeric vector

``Revenue``
   Revenue (Millions of pounds), a numeric vector

Details
~~~~~~~

Playfair's 1824 chart is a pivotal work in the history of data
visualization because it uses a multiple line graphs showing time series
of economic indicators over time, with a fine appreciation of the
complexity and directly labeled curves. The dataset, extracted from the
image by Ivan Lokhov using WebPlotDigitizer, presents a challenge in
trying re-create it, or do better using modern graphics methods.

Source
~~~~~~

Ivan Lokhov, Remaking a 200-year-old chart
https://www.datawrapper.de/blog/playfair-chronology-multiple-lines

References
~~~~~~~~~~

Playfair, W. (1824). *Chronology of Public Events and Remarkable
Occurrences within the Last Fifty Years; or from 1774 to 1824*,
published by W. Lewis, Finch Lane, London.

The original chart can be seen on Wikimedia at: https://bit.ly/4ihX92a

Spence, I., Fenn, C. R., & Klein, S. (2017). Who is buried in Playfairs
grave? *Significance*, 14(5), 20–23.
`doi:10.1111/j.1740-9713.2017.01071.x <https://doi.org/10.1111/j.1740-9713.2017.01071.x>`__

Examples
~~~~~~~~

.. code:: R

   data(Playfair1824)
   str(Playfair1824)

   # Plot multiple time series with matplot()
   matplot(Playfair1824$Year, Playfair1824[, -1],
           pch = c("S", "W", "B", "D", "E", "I", "X", "R"),
           type = "b",
           xlab = "Year",
           ylab = "value",
           ylim = c(0, 140),
           main = "Linear Chronology, Exhibiting the Revenues, Expenditure, ... from 1770 to 1824")

   # main events
   events <- data.frame(
     start = c(1776, 1793, 1804),
     end = c(1782.2, 1802, 1815.2),
     event = c("American War", "War: French Republic", "War: Napoleon")
   )

   with(events, {
     arrows(x0 = start, x1 = end, 
            y0 = 130, y1 = 130, 
            lwd = 3,
            code = 3,
            angle = 90, length = 0.05)
     text((start+end)/2, 132, event, pos = 3)
   })
