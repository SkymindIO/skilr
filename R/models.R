#' SKIL Model
#' wrapper for DL4J, Keras, TensorFlow and other models
#' SKIL has a robust model storage, serving, and import system for supporting major 
#' deep learning libraries.
#' SKIL can be used for end-to-end training, configuration, and deployment of models 
#' or alternatively you can import models into SKIL.
#'
#' @param model: Model file path or  model instance
#' @param model_id: integer. Unique id for model. If NULL, a unique id will be generated.
#' @param name: string. Name for the model.
#' @param version: integer. Version of the model. Defaults to 1.
#' @param experiment: `Experiment` instance. If NULL, an `Experiment` object will be created internally.
#' @param labels: string. Labels for this model
#' @param verbose: boolean. If TRUE, prints api response.
#' @param create: boolean. Internal. Do not use.
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # Creating a SKIL experiment
#' skil  <- Skil(host='localhost', port=9008, user_id='admin', password='admin')
#' ws    <- Workspace(skil, name='test_workspace')
#' exp   <- Experiment(ws, name='test_experiment')
#' model <- Model(model="keras.h5", name="my_keras_model", experiment=exp)
#'
#' }
#' @export
Model <- function(model=NULL, model_id=NULL, name=NULL, version=NULL, experiment=NULL,
                  labels='', verbose=FALSE, create=TRUE) {
  skilr$Model(
      model=model,
      model_id=model_id,
      name=name,
      version=version,
      experiment=experiment,
      labels=labels,
      verbose=verbose,
      create=create)
}

#' Get model by ID
#' 
#' @param experiment: SKIL experiment
#' @param model_id: string, model ID
#' 
#' @export
get_model_by_id <- function(experiment, model_id) {

  skilr$get_model_by_id(experiment, model_id)
}

#' SKIL Transform
#' Wrapper for for preprocessing (transform) steps. Currently only
#' supports `TransformProcess` instances from pydatavec or their serialized
#' versions (JSON format).
#' 
#' @param transform: pydatavec.TransformProcess or TransformProcess JSON
#' @param transform_id: integer. Unique id for the transform. If `None`, a unique id will be generated.
#' @param transform_type: Type of the SKIL transform. Choose from "CSV", "image" or "array"
#' @param name: string. Name for the transform.
#' @param version: integer. Version of the transform. Defaults to 1.
#' @param experiment: `Experiment` instance. If `None`, an `Experiment` object will be created internally.
#' @param labels: string. Labels associated with the workspace, useful for searching (comma separated).
#' @param verbose: boolean. If `True`, prints api response.
#' @param create: boolean. Internal. Do not use.
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # Creating a SKIL experiment
#' skil  <- Skil(host='localhost', port=9008, user_id='admin', password='admin')
#' ws    <- Workspace(skil, name='test_workspace')
#' exp   <- Experiment(ws, name='test_experiment')
#' trans <- Transform(transform="iris.json", name="my_pydatavec_transform", experiment=exp)
#'
#' }
#' @export
Transform <- function(transform=NULL, transform_id=NULL, transform_type="CSV", name=NULL, 
                  version=NULL, experiment=NULL,
                  labels='', verbose=FALSE, create=TRUE) {
  skilr$Transform(
      transform=transform,
      transform_id=transform_id,
      transform_type=transform_type,
      name=name,
      version=version,
      experiment=experiment,
      labels=labels,
      verbose=verbose,
      create=create)
}

#' Get transform by ID
#' 
#' @param transform_id: string, Transform ID
#' @param transform_type: string, Transfrom type ("CSV", "array" or "image")
#' @param experiment: SKIL Experiment instance
#'
#' @export
get_transform_by_id <- function(experiment, model_id) {

  skilr$get_transform_by_id(experiment, model_id)
}
