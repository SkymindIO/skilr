#' SKIL server connection
#'
#' Central class for managing connections with the SKIL server.
#'
#' @param workspace_server_id: None by default, only specify if you want to connect to a non-default SKIL workspace server.
#' @param host: string, Host on which the SKIL server runs.
#' @param port: integer, Port on which the SKIL host runs.
#' @param user_id: user name for your SKIL server connection.
#' @param password: password of the provided SKIL user.
#' @param debug: boolean, set to false for more verbose logging.
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # Connecting to SKIL
#' skil <- Skil(host='localhost', port=9008, user_id='admin', password='admin')
#'
#' }
#' @export
Skil <- function(workspace_server_id=NULL, host='localhost', port=9008,
                  user_id='admin', password='admin', debug=FALSE) {
  skilr$Skil(workspace_server_id=workspace_server_id,
          host=host,
          port=as.integer(port),
          user_id=user_id,
          password=password,
          debug=debug)
}

#' Get SKIL server connection from configuration
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # Connecting to SKIL, assumes a prior connection from this machine
#' skil <- skil_from_config()
#'
#' }
#' @export
skil_from_config <- function() {
  skilr$Skil$from_config()
}

