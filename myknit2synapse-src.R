myknit2synapse <- function(Rmd, owner) {
    w <- synapser::synGetWiki(owner)
    knit2synapse::knitfile2synapse(Rmd, owner = owner, parentWikiId=w$id, overwrite = FALSE)
}
