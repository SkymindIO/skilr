#' SKIL Deployment
#'
#' Deployments operate independently of workspaces to ensure that there are
#' no accidental interruptions or mistakes in a production environment.
#'
#' @param skil: `Skil` server instance. If `None`, SKIL will load from config.
#' @param name: string. Name for the deployment.
#' @param id: Unique id for the deployment. If `None`, a unique id will be generated.ging.
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # Creating a deployment
#' deployment <- Deployment()
#'
#' }
#' @export
Deployment <- function(skil=NULL, name=NULL, deployment_id=NULL) {
  skilr$Deployment(skil=skil, name=name, deployment_id=deployment_id)
}

#' Get deployment by ID
#' 
#' skil: `Skil` server instance
#' deployment_id: string, deployment ID
#' 
#' @export
get_experiment_by_id <- function(skil, deployment_id) {

  skilr$get_deployment_by_id(skil, deployment_id)
}
