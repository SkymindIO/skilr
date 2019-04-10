#' SKIL Service
#'
#' A Service is a deployed Model
#'
#' @param skil: `Skil` server instance
#' @param model: `skil.Model` instance
#' @param deployment: `skil.Deployment` instance
#' @param model_entity: skil_client.ModelEntity, result of `deploy_model` SKIL API call of a `Model`
#'
#' @examples
#' \dontrun{
#' library(skilr)
#' TODO
#'
#' }
#' @export
Service <- function(skil, model, deployment, model_entity) {
  skilr$Service(skil=skil, model=model, deployment=deployment, model_entity=model_entity)
}

#' SKIL TransformCsvService
#'
#' A service for transforming CSV data
#'
#' @param skil: `Skil` server instance
#' @param model: `skil.Model` instance
#' @param deployment: `skil.Deployment` instance
#' @param model_entity: skil_client.ModelEntity, result of `deploy_model` SKIL API call of a `Model`
#'
#' @examples
#' \dontrun{
#' library(skilr)
#' TODO
#'
#' }
#' @export
TransformCsvService <- function(skil, model, deployment, model_entity) {
  skilr$TransformCsvService(skil=skil, model=model, deployment=deployment, model_entity=model_entity)
}

#' SKIL TransformArrayService
#'
#' A service for transforming array data
#'
#' @param skil: `Skil` server instance
#' @param model: `skil.Model` instance
#' @param deployment: `skil.Deployment` instance
#' @param model_entity: skil_client.ModelEntity, result of `deploy_model` SKIL API call of a `Model`
#'
#' @examples
#' \dontrun{
#' library(skilr)
#' TODO
#'
#' }
#' @export
TransformArrayService <- function(skil, model, deployment, model_entity) {
  skilr$TransformArrayService(skil=skil, model=model, deployment=deployment, model_entity=model_entity)
}

#' SKIL TransformImageService
#'
#' A service for transforming image data
#'
#' @param skil: `Skil` server instance
#' @param model: `skil.Model` instance
#' @param deployment: `skil.Deployment` instance
#' @param model_entity: skil_client.ModelEntity, result of `deploy_model` SKIL API call of a `Model`
#'
#' @examples
#' \dontrun{
#' library(skilr)
#' TODO
#'
#' }
#' @export
TransformImageService <- function(skil, model, deployment, model_entity) {
  skilr$TransformImageService(skil=skil, model=model, deployment=deployment, model_entity=model_entity)
}