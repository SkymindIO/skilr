#' SKIL AWS credentials
#' 
#' @export
AWS <- function(skil, uri, name) {
    skilr$AWS(skil, uri, name)
}

#' SKIL Azure credentials
#' 
#' @export
Azure <- function(skil, uri, name) {
    skilr$Azure(skil, uri, name)
}

#' SKIL Google Cloud credentials
#' 
#' @export
GoogleCloud <- function(skil, uri, name) {
    skilr$GoogleCloud(skil, uri, name)
}

#' SKIL Hadoop credentials
#' 
#' @export
Hadoop <- function(skil, uri, name) {
    skilr$Hadoop(skil, uri, name)
}

#' Delete SKIL credentials by ID
#' 
#' @export
delete_credentials_by_id <- function(skil, credentials_id) {
    skilr$delete_credentials_by_id(skil, credentials_id)
}

#' Get SKIL credentials by ID
#' 
#' @export
get_credentials_by_id <- function(skil, credentials_id) {
    skilr$get_credentials_by_id(skil, credentials_id)
}