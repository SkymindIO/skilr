#' R interface to SKIL
#'
#'
#' @import methods
#' @import R6
#' @importFrom reticulate import dict iterate import_from_path py_iterator py_call py_capture_output py_get_attr py_has_attr py_is_null_xptr py_to_r r_to_py tuple
#' @importFrom graphics par plot points
#' @importFrom tensorflow tf_version tf_config install_tensorflow
"_PACKAGE"

# package level global state
.globals <- new.env(parent = emptyenv())

# Load main SKIL module
skilr <- NULL


.onLoad <- function(libname, pkgname) {

  skilr <<- import("skil", delay_load = list(

    priority = 10,

    on_error = function(e) {
      if (grepl("No module named skil", e$message)) {
        skil_not_found_message(e$message)
      } else {
        stop(e$message, call. = FALSE)
      }
    }
  ))
}

skil_not_found_message <- function(error_message) {
  message(error_message)
  message("Please install the `skil` Python package first.")
}
