.. container::

   .. container::

      ==== ===============
      Khan R Documentation
      ==== ===============

      .. rubric:: Khan Gene Data
         :name: khan-gene-data

      .. rubric:: Description
         :name: description

      The data consists of a number of tissue samples corresponding to
      four distinct types of small round blue cell tumors. For each
      tissue sample, 2308 gene expression measurements are available.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Khan

      .. rubric:: Format
         :name: format

      The format is a list containing four components: ``xtrain``,
      ``xtest``, ``ytrain``, and ``ytest``. ``xtrain`` contains the 2308
      gene expression values for 63 subjects and ``ytrain`` records the
      corresponding tumor type. ``ytrain`` and ``ytest`` contain the
      corresponding testing sample information for a further 20
      subjects.

      .. rubric:: Source
         :name: source

      This data were originally reported in:

      Khan J, Wei J, Ringner M, Saal L, Ladanyi M, Westermann F,
      Berthold F, Schwab M, Antonescu C, Peterson C, and Meltzer P.
      Classification and diagnostic prediction of cancers using gene
      expression profiling and artificial neural networks. Nature
      Medicine, v.7, pp.673-679, 2001.

      The data were also used in:

      Tibshirani RJ, Hastie T, Narasimhan B, and G. Chu. Diagnosis of
      Multiple Cancer Types by Shrunken Centroids of Gene Expression.
      Proceedings of the National Academy of Sciences of the United
      States of America, v.99(10), pp.6567-6572, May 14, 2002.

      .. rubric:: References
         :name: references

      James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
      Introduction to Statistical Learning with applications in R*,
      https://www.statlearning.com, Springer-Verlag, New York

      .. rubric:: Examples
         :name: examples

      .. code:: R

         table(Khan$ytrain)
         table(Khan$ytest)
