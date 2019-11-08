# Run in parent directory ("rcourse/", not "rcourse/R").
#
# Usage:
#
#   Rscript _commands/build-pdf.R

# Convert all Rmd files into PDF files
rmd_files <- list.files(pattern = "^assignment-09.*.Rmd$")
sapply(
    rmd_files,
    rmarkdown::render,
    output_format = "pdf_document",
    output_dir = "_pdf",
    output_options = list(
        pandoc_args = c("-V", "fontsize=12pt", "-V", "papersize=letter"),
        include = list(in_header = "_includes/preamble.tex")
    )
)
