#!/usr/bin/env Rscript
library(data.table)
library(nanoparquet)
library(fs)

# Find all CSV files recursively in csv/
csv_files <- dir(
    'csv',
    pattern = '\\.[cC][sS][vV]$',
    recursive = TRUE,
    full.names = TRUE
)

for (csv_path in csv_files) {
    # Compute the corresponding parquet path
    parquet_path <- sub('^csv/', 'parquet/', csv_path)
    parquet_path <- sub('\\.[cC][sS][vV]$', '.parquet', parquet_path)

    # Skip if the parquet file already exists
    if (file_exists(parquet_path)) {
        cat(sprintf('Skipping %s (already exists)\n', parquet_path))
        next
    }

    # Create output directory if it doesn't exist
    dir_create(dirname(parquet_path))

    # Read CSV and write Parquet
    dt <- fread(csv_path)
    write_parquet(dt, parquet_path)
    cat(sprintf('Converted %s -> %s\n', csv_path, parquet_path))
}
