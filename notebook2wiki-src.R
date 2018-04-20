notebook2wiki <- function(fileId, projectId) {
    w <- synGetWiki(projectId)
    md <- paste0("${preview?entityId=", fileId, "}")
    fl <- synGet(fileId, downloadFile = FALSE)
    title <- sub(".html", "", fl$properties$name)
    sw <- Wiki(owner = projectId, title = title, markdown = md, parentWikiId=w$id)
    sw <- synStore(sw)
}
