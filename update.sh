Rscript -e "devtools::install(dependencies = TRUE)"
Rscript scrape.R
Rscript csv_to_parquet.R
cd doc
../documentation.sh
cd ..
Rscript -e "rmarkdown::render('README.Rmd')"
git add .
git commit -m "timeSeriesDataSets educationR crimedatasets MedDataSets OncoDataSets"
git push
git checkout gh-pages;
git checkout master -- csv;
git checkout master -- doc;
git checkout master -- parquet;
git checkout master -- datasets.csv;
git checkout master -- datasets.html;
git checkout master -- README.md;
git checkout master -- README.Rmd;
git add .
git commit -m "NA to empty"
git push
git checkout master
Rscript -e "pkgdown::deploy_to_branch(clean = FALSE)"