
# Run in parent directory ("rcourse/", not "rcourse/R").
#
# Usage:
#
#   Rscript _commands/build-pdf.R

# Convert all Rmd files into pdf files
rmd_files <- list.files(pattern = "(assignment|lec|index).*.Rmd$")
sapply(rmd_files, rmarkdown::render, output_format = "pdf_document",
       output_options = list(
           pandoc_args = c("-V", "fontsize=12pt", "-V", "papersize=letter"),
           include = list(in_header = "_includes/preamble.tex")
       ))

# Create a _pdf dir if none exists
if (!dir.exists("_pdf")) {
    dir.create("_pdf")
}

# Delete any existing pdf files in the _pdf dir and move the new ones over to _pdf/.
pdf_files <- list.files(pattern = "(assignment|lec|index).*.pdf$")
files_to_pdf_dir <- paste0("_pdf/", pdf_files)
file.remove(files_to_pdf_dir)
file.rename(from = pdf_files, to = files_to_pdf_dir)
