# Run this command in the parent directory (`rcourse/`)
#
# Usage:
#
#   Rscript _commmands/build-slides.R
#

# Create directory for slides, delete all previous files if they exist.
if (!dir.exists("_slides")) {
    dir.create("_slides")
} else {
    existing_slide_files <- list.files(path = "_slides", pattern = "*.html")
    file.remove(existing_slide_files)
}

# Generate the html files.
rmd_files <- list.files(pattern = "lec.*.Rmd$")
sapply(rmd_files, rmarkdown::render, output_format = "ioslides_presentation",
       output_dir = "_slides")
