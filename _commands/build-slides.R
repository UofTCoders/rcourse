# Run this command in the parent directory (`rcourse/`)
#
# Usage:
#
#   Rscript _commmands/build-slides.R
#

# Generate the slide html files, of only the lectures.
rmd_files <- c(
    NA
)

if (!is.na(rmd_files)) {
    sapply(
        rmd_files,
        rmarkdown::render,
        output_format = "ioslides_presentation",
        output_dir = "_site/slides",
        output_options = list(
            df_print = "kable",
            slide_level = 3,
            incremental = TRUE,
            smaller = TRUE,
            transition = 0.01
        )
    )
}
