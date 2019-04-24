#' SKIL ParameterAveraging strategy
#'
#' Parameter averaging configuration for distributed training.
#'
#' @param num_workers: number of Spark workers/executors.
#' @param batch_size: batch size used for model training
#' @param averaging_frequency: int, after how many batches of training averaging takes place
#' @param num_batches_prefetch: int, how many batches to pre-fetch, deactivated if 0.
#' @param collect_stats: boolean, if statistics get collected during training
#'
#' @examples
#' \dontrun{
#' library(skilr)
#' TODO
#'
#' }
#' @export
ParameterAveraging <- function(num_workers, batch_size, averaging_frequency=5,
                 num_batches_prefetch=0, collect_stats=FALSE) {
  skilr$ParameterAveraging(
      num_workers=num_workers,
      batch_size=batch_size,
      averaging_frequency=as.integer(averaging_frequency),
      num_batches_prefetch=as.integer(num_batches_prefetch),
      collect_stats=collect_stats
      )
}

#' SKIL ParameterSharing strategy
#'
#' Parameter sharing configuration for distributed training.
#'
#' @param num_workers: number of Spark workers/executors.
#' @param batch_size: batch size used for model training
#' @param shake_frequency: shake frequency
#' @param min_threshold: minimum threshold
#' @param update_threshold: update threshold
#' @param workers_per_node: workers per node
#' @param num_batches_prefetch: number of batches to prefetch
#' @param step_delay: step delay
#' @param step_trigger: step trigger
#' @param threshold_step: threshold step
#' @param collect_stats: boolean, if statistics get collected during training
#'
#' @examples
#' \dontrun{
#' library(skilr)
#' TODO
#'
#' }
#' @export
ParameterSharing <- function(num_workers,batch_size,
                 shake_frequency=0, min_threshold=1e-5, update_threshold=1e-3, workers_per_node=-1,
                 num_batches_prefetch=0, step_delay=50, step_trigger=0.05, threshold_step=1e-5,
                 collect_stats=FALSE) {
  skilr$ParameterSharing(
      num_workers=num_workers,
      batch_size=batch_size,
      shake_frequency=as.integer(shake_frequency),
      min_threshold=min_threshold,
      update_threshold=update_threshold,
      workers_per_node=as.integer(workers_per_node),
      num_batches_prefetch=as.integer(num_batches_prefetch),
      step_delay=as.integer(step_delay),
      step_trigger=step_trigger,
      threshold_step=threshold_step,
      collect_stats=collect_stats
      )
}
