#' SKIL Experiment
#'
#' Experiments in SKIL are useful for defining different model configurations, 
#' encapsulating training of models, and carrying out different data cleaning tasks.
#'
#' Experiments have a one-to-one relationship with Notebooks and have their own 
#' storage mechanism for saving different model configurations when seeking a best 
#' candidate.
#'
#' @param work_space: `WorkSpace` instance. If NULL a workspace will be created.
#' @param experiment_id: integer. Unique id for workspace. If `None`, a unique id will be generated.
#' @param name: string. Name for the experiment.
#' @param description: string. Description for the experiment.
#' @param verbose: boolean. If FALSE, api response will be printed.
#' @param skil_server: Optional `Skil` instance, used when create is false.
#' @param create: boolean. If TRUE a new experiment will be created.
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # Creating a SKIL experiment
#' skil <- Skil(host='localhost', port=9008, user_id='admin', password='admin')
#' ws   <- Workspace(skil, name='test_workspace')
#' exp  <- Experiment(ws, name='test_experiment')
#'
#' }
#' @export
Experiment <- function(work_space=NULL, experiment_id=NULL, name='experiment',
                 description='experiment', verbose=FALSE, skil_server=NULL, create=TRUE) {
  
  skilr$Experiment(
          work_space=work_space,
          experiment_id=experiment_id,
          name=name,
          description=description,
          verbose=verbose,
          skil_server=skil_server,
          create=create)
}

#' Get experiment by ID
#' 
#' @param skil: `Skil` server instance
#' @param experiment_id: string, experiment ID
#' 
#' @export
get_experiment_by_id <- function(skil, experiment_id) {

  skilr$get_experiment_by_id(skil, experiment_id)
}
