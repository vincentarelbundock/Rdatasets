library(R2HTML) 
library(desc)
suppressMessages(library(tidyverse))

# parse DESCRIPTION to get list of Imports
packages <- desc_get_deps()$package

# load packages
sapply(packages, function(x) suppressPackageStartupMessages(require(x, character.only = TRUE, warn.conflicts = FALSE, quietly = TRUE)))


clean_data = function(dat) {
    if(class(dat)[1]=='ts'){
        dat = try(data.frame('time' = time(dat), 'value' = dat), silent = TRUE)
    } else {
        dat = try(as.data.frame(dat), silent = TRUE)
    }
    if (inherits(dat, "data.frame")) {
        # tibbles -> data.frame
        out = as.data.frame(dat) 
        # list columns cannot be saved to CSV and cause problems. see dplyr::starwars
        idx <- sapply(out, function(x) class(x)[1]) != "list"
        out <- out[, idx, drop = FALSE]
    } else {
        out = suppressWarnings(tryCatch(as.data.frame(dat), error = function(e) NULL))
    }
    return(out)
}

# Functions
get_doc = function(package = 'mi', dataset = 'nlsyV') {
    help.ref = try(help(eval(dataset), package=eval(package)), silent = TRUE)
    out = try(utils:::.getHelpFile(help.ref), silent = TRUE)
    return(out)
}

get_data = function(package = 'mi', dataset = 'nlsyV') {
    e = new.env(hash = TRUE, parent = parent.frame(), size = 29L)
    data(list = dataset, package = package, envir = e, overwrite = TRUE)
    out = e[[dataset]]
    out = clean_data(out)
    return(out)
}

get_both <- function(i) {
    package = index$Package[i]
    dataset = index$ItemClean[i]
    a = suppressWarnings(tryCatch(get_data(package, dataset), error = function(e) NULL))
    b = suppressWarnings(tryCatch(get_doc(package, dataset), error = function(e) NULL))
    if (is.null(a) || is.null(b)) {
        out <- NULL
    } else {
        out <- list(data = a, doc = b)
    }
    return(out)
}


write_data = function(i) {
    package = index$Package[i]
    dataset = index$ItemClean[i]
    dat = data[[i]]
    doc = docs[[i]]

    cat(package, ' -- ', dataset, '\n')
    if (!dir.exists("csv")) dir.create('csv')
    if (!dir.exists("doc")) dir.create('doc')
    if (!dir.exists(paste0('csv/', package))) dir.create(paste0('csv/', package))
    if (!dir.exists(paste0('doc/', package))) dir.create(paste0('doc/', package))
    fn_csv = paste0('csv/', package, '/', dataset, '.csv')
    fn_doc = paste0('doc/', package, '/', dataset, '.html')
    write.csv(data[[i]], file = fn_csv)
    tools::Rd2HTML(docs[[i]], out = fn_doc)
}

# Index
index = data(package=packages)$results[,c(1,3,4)]
index = data.frame(index, stringsAsFactors=FALSE)
index$ItemClean = gsub(" .*", "", index$Item)

# Extract Data and Docs and exclude non-data.frames and errors
data = lapply(seq_len(nrow(index)), get_both)
idx = sapply(data, is.null)
data = data[!idx]
index = index[!idx,]
docs = lapply(data, function(x) x$doc)
data = lapply(data, function(x) x$data)

# Write to file
for (i in 1:nrow(index)) {
    try(write_data(i), silent = TRUE)
}

# Index
is.binary <- function(x) {
    tryCatch(length(unique(na.omit(x))) == 2, 
             error = function(e) FALSE, silent = TRUE)
}
index$Rows = vapply(data, nrow, FUN.VALUE = numeric(1))
index$Cols = vapply(data, ncol, FUN.VALUE = numeric(1))
index$n_binary <- sapply(data, function(x) sum(vapply(x, is.binary, FUN.VALUE = logical(1))))
index$n_character <- sapply(data, function(x) sum(vapply(x, is.character, FUN.VALUE = logical(1))))
index$n_factor <- sapply(data, function(x) sum(vapply(x, is.factor, FUN.VALUE = logical(1))))
index$n_logical <- sapply(data, function(x) sum(vapply(x, is.logical, FUN.VALUE = logical(1))))
index$n_numeric <- sapply(data, function(x) sum(vapply(x, is.numeric, FUN.VALUE = logical(1))))

index$CSV = paste('https://vincentarelbundock.github.io/Rdatasets/csv/',
                  index$Package, '/', index$Item, '.csv', sep='')
index$Doc = paste('https://vincentarelbundock.github.io/Rdatasets/doc/',
                  index$Package, '/', index$Item, '.html', sep='')

# case insensitive sorting
index = index[order(tolower(index$Package), 
                    tolower(index$Item)),]

# Index CSV
index$ItemClean = NULL
write.csv(index, file = 'datasets.csv', row.names = FALSE)

# Index HTML
index$CSV = paste("<a href='", index$CSV, "'> CSV </a>", sep='')
index$Doc = paste("<a href='", index$Doc, "'> DOC </a>", sep='')
unlink('datasets.html')
rss = '
<style type="text/css">
  tr:nth-child(even){
          background-color: #E5E7E5;
  }
</style>
'
cat(rss, file='datasets.html')
HTML(index, file='datasets.html', row.names=FALSE, append=TRUE)
