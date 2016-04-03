# knit rmd to HTML and build jekyll site in site.dir
knit.build <- function(rmd, site.dir='~/lab-notebook') {
    knit2html(rmd, fragment.only=TRUE)
    save.dir <- getwd()
    setwd(site.dir)
    system2('bundle', args= c('exec', 'jekyll', 'build'))
    setwd(save.dir)
}
