myknit <- function(Rmd) {
    bn <- sub("([^.]*)\\.Rmd", "\\1", Rmd)
    md <- paste0(bn, ".md")
    knit(Rmd, md, envir = globalenv())
}
