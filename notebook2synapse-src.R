notebook2synapse <- function(Rmd, parentId) {
    bn <- sub("([^.]*)\\.Rmd", "\\1", Rmd)
    html <- paste0(bn, ".html")
    #render(Rmd, output_format = "html_document", output_file = html, envir = globalenv())
    knit2html(Rmd, output = html, force_v1 = TRUE, envir = globalenv())
    file <- File(path = html, parentId = parentId)
    file <- synStore(file)
}
