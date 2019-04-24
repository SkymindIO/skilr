#' SKIL JobConfiguration
#'
#' A SKIL job configuration collects all data needed to set up and run a SKIL Job.
#' SKIL currently has inference and training jobs, each come with their respective
#' configuration.
#'
#' @param skil_model: a `skil.Model` instance
#' @param compute_resource: `skil.resources.compute.ComputeResource` instance, created before running a job.
#' @param storage_resource: `skil.resources.storage.StorageResource` instance, created before running a job.
#' @param output_path: string with path to folder in which job output should be stored.
#' @param data_set_provider_class: name of the class to be used as `DataSetProvider` in SKIL
#' @param is_multi_data_set: boolean, whether data set uses `MultiDataSet` interface.
#' @param verbose: boolean, log level. Set True for detailed logging.
#'
#' @examples
#' TODO
#'
#' }
#' @export
JobConfiguration <- function(skil_model, compute_resource, storage_resource, output_path,
                  data_set_provider_class, is_multi_data_set, verbose)) {
  skilr$JobConfiguration(
      skil_model=skil_model,
      compute_resource=compute_resource,
      storage_resource=storage_resource,
      output_path=output_path,
      data_set_provider_class=data_set_provider_class,
      is_multi_data_set=is_multi_data_set,
      verbose=verbose)
}

#' SKIL InferenceJobConfiguration
#'
#' Configuration for a SKIL inference job. On top of what you need to specify for a base JobConfiguration,
#' you need to set the batch size for the model as well.
#'
#' @param skil_model: a `skil.Model` instance
#' @param batch_size: int, data batch size to run inference with on the model.
#' @param compute_resource: `skil.resources.compute.ComputeResource' instance, created before running a job.
#' @param storage_resource: `skil.resources.storage.StorageResource` instance created before runnning a job
#' @param output_path: string with path to folder in which job output should be stored.
#' @param data_set_provider_class: name of the class to be used as `DataSetProvider` in SKIL
#' @param is_multi_data_set: boolean, whether data set uses `MultiDataSet` interface.
#' @param verbose: boolean, log level. Set True for detailed logging.
#'
#' @examples
#' TODO
#'
#' }
#' @export
InferenceJobConfiguration <- function(skil_model, batch_size, compute_resource, storage_resource, output_path,
                  data_set_provider_class, is_multi_data_set=FALSE, verbose=FALSE)) {
  skilr$InferenceJobConfiguration(
      skil_model=skil_model,
      batch_size=batch_size,
      compute_resource=compute_resource,
      storage_resource=storage_resource,
      output_path=output_path,
      data_set_provider_class=data_set_provider_class,
      is_multi_data_set=is_multi_data_set,
      verbose=verbose)
}

#' SKIL TrainingJobConfiguration
#' 
#' Configuration for a SKIL training job. On top of what you need to specify for a base JobConfiguration,
#' you need to set the number of epochs to train for, a (distributed) training configuration and provide
#' information about how to evaluate your model.
#' 
#' @param skil_model: a `skil.Model` instance
#' @param num_epochs: number of epochs to train
#' @param eval_type: evaluation type
#' @param eval_data_set_provider_class: name of the `DataSetProvider` class 
#' @param compute_resource: `skil.resources.compute.ComputeResource' instance, created before running a job.
#' @param storage_resource: `skil.resources.storage.StorageResource` instance created before runnning a job
#' @param output_path: string with path to folder in which job output should be stored.
#' @param data_set_provider_class: name of the class to be used as `DataSetProvider` in SKIL
#' @param is_multi_data_set: boolean, whether data set uses `MultiDataSet` interface.
#' @param ui_url: url of a previously started DL4J training UI  
#' @param verbose: boolean, log level. Set True for detailed logging.
#'
#' @examples
#' TODO
#'
#' }
#' @export
TrainingJobConfiguration <- function(skil_model, num_epochs, eval_type, eval_data_set_provider_class, 
                                      compute_resource, storage_resource, output_path,
                                      data_set_provider_class, is_multi_data_set=FALSE, ui_url=NULL, verbose=FALSE)) {
  skilr$TrainingJobConfiguration(
      skil_model=skil_model,
      num_epochs=num_epochs,
      eval_type=eval_type,
      eval_data_set_provider_class=eval_data_set_provider_class,
      compute_resource=compute_resource,
      storage_resource=storage_resource,
      output_path=output_path,
      data_set_provider_class=data_set_provider_class,
      is_multi_data_set=is_multi_data_set,
      ui_url=ui_url,
      verbose=verbose)
}

#' SKIL TrainingJob
#' 
#' Initialize and run a SKIL training job.
#' 
#' @param training_config: `TrainingJobConfiguration` instance
#' @param distributed_config: `DistributedConfiguration` instance
#' @param job_id: NULL by default, provide this ID for existing jobs.
#' @param create: boolean, whether to create a new job or retrieve an existing one.
#'
#' @examples
#' TODO
#'
#' }
#' @export
TrainingJob <- function(training_config, distributed_config, job_id=NULL, create=TRUE)) {
  skilr$TrainingJob(
      training_config=training_config,
      distributed_config=distributed_config,
      job_id=job_id,
      create=create)
}

#' SKIL InferenceJob
#' 
#' Initialize and run a SKIL inference job.
#'
#' @param inference_config: `InferenceJobConfiguration` instance
#' @param job_id: NULL by default, provide this ID for existing jobs.
#' @param create: boolean, whether to create a new job or retrieve an existing one.
#'
#' @examples
#' TODO
#'
#' }
#' @export
InferenceJob <- function(inference_config, job_id=NULL, create=TRUE)) {
  skilr$InferenceJob(
      inference_config=inference_config,
      job_id=job_id,
      create=create)
}

#' Get all current SKIL jobs
#'
#' @export
get_all_jobs <- function(skil) {
    skilr$get_all_jobs(skil)
}

#' Get SKIL job by id
#'
#' @export
get_job_by_id <- function(skil, job_id) {
    skilr$get_job_by_id(skil, job_id)
}

#' Delete Job by ID
#' 
#' @export
delete_job_by_id <- function(skil, job_id) {
    skilr$delete_job_by_id(job_id)
}
