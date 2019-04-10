#' SKIL Workspace
#'
#' Workspaces are a collection of features that enable different tasks such as
#' conducting experiments, training models, and test different dataset transforms.
#'
#' Workspaces are distinct from Deployments by operating as a space for 
#' non-production work.
#'
#' @param skil: Skil server instance
#' @param name: string. Name for the workspace.
#' @param labels: string. Labels associated with the workspace, useful for searching (comma seperated).
#' @param verbose: boolean. If True, api response will be printed.
#' @param create: boolean. Internal, do not use.
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # Creating a SKIL workspace
#' skil <- Skil(host='localhost', port=9008, user_id='admin', password='admin')
#' ws   <- Workspace(skil, name='test_workspace')
#'
#' }
#' @export
WorkSpace <- function(skil=NULL, name=NULL, labels=NULL, verbose=FALSE, create=TRUE) {
  
  skilr$WorkSpace(
          skil=skil,
          name=name,
          labels=labels,
          verbose=verbose,
          create=create)
}

#' Get workspace by ID
#' 
#' @param skil: `Skil` server instance
#' @param workspace_id: string, workspace ID
#' 
#' @export
get_workspace_by_id <- function(skil, workspace_id) {

  skilr$get_workspace_by_id(skil=skil, workspace_id=workspace_id)
}



