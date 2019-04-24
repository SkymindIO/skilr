#' SKIL ResourceGroup
#'
#' SKIL resource groups can be used to group SKIL Resource instances
#' into logical groups. You first create a group and then add resources to the group
#' later on, using `add_resource`.
#'
#' @param skil: `Skil` server instance
#' @param group_name: Name of the resource group
#' @param group_id: optional group ID to retrieve an existing resource group
#' @param create: boolean, for internal use only. whether to create a new resource or not
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # TODO
#' @export
ResourceGroup <- function(skil, group_name, group_id=NULL, create=TRUE) {
    skilr$ResourceGroup(
        skil=skil,
        group_name=group_name,
        group_id=group_id,
        create=create)
}

#' Delete a resource group by ID
#' 
#' @export
delete_resource_group_by_id <- function(skil, group_id) {
    skilr$delete_resource_group_by_id(skil=skil, group_id=group_id)
}

#' Get a resource group by ID
#' 
#' @export
get_resource_group_by_id <- function(skil, group_id) {
    skilr$get_resource_group_by_id(skil=skil, group_id=group_id)
}

#' Get all resource groups
#' 
#' @export
get_all_resource_groups <- function(skil, group_id) {
    skilr$get_all_resource_groups(skil=skil)
}

#' Get all resources from a group
#' 
#' @export
get_resources_from_group <- function(skil, group) {
    skilr$get_all_resource_groups(skil=skil, group=group)
}