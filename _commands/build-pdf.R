
# Run in parent directory ("rcourse/", not "rcourse/R").
#
# Usage:
#
#   Rscript _commands/build-pdf.R

# Create a _pdf dir if none exists
if (!dir.exists("_pdf")) {
    dir.create("_pdf")
} else {
    existing_pdf_files <- list.files(path = "_pdf", pattern = "*.pdf$")
    file.remove(existing_pdf_files)
}

# Convert all Rmd files into pdf files
rmd_files <- list.files(pattern = "(assignment|lec|index).*.Rmd$")
sapply(rmd_files, rmarkdown::render, output_format = "pdf_document",
       output_options = list(
           pandoc_args = c("-V", "fontsize=12pt", "-V", "papersize=letter"),
           include = list(in_header = "_includes/preamble.tex")
       ), output_dir = "_pdf")
