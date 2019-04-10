#' Get experiment by ID
#' 
#' @param image: array representing the image used for detection
#' @param detection: `DetectionResult` result from SKIL on the same image
#' 
#' @export
annotate_image <- function(image, detection) {
  skilr$utils$yolo$annotate_image(image, detection)
}