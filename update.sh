Rscript scrape.R
cd doc
../documentation.sh
cd ..
Rscript -e "rmarkdown::render('README.Rmd')"
git add .
git commit -m "fpp3 update"
git push
git checkout gh-pages;
git checkout master -- csv;
git checkout master -- doc;
git checkout master -- datasets.csv;
git checkout master -- datasets.html;
git add .
git commit -m "NA to empty"
git push
git checkout master
Rscript -e "pkgdown::deploy_to_branch(clean = FALSE)"