
# Usage:
#
#   Rscript _commmands/create-html-slides.R lesson-file.Rmd

arg <- commandArgs(trailingOnly = TRUE)

if (length(arg) > 1) {
    stop("Please supply only one Rmd file name.")
}

rmd_file <- arg[1]

# Check if file exists
if (!file.exists(rmd_file)) {
    stop(rmd_file, " doesn't exist. Is there a typo?")
}

if (!dir.exists("_slides")) {
    dir.create("_slides")
}

rmarkdown::render(rmd_file, output_format = "ioslides_presentation", output_dir = "_slides")
