#' SKIL EMR
#'
#' AWS Elastic Map Reduce compute resource
#'
#' @param skil: `Skil` server instance
#' @param name: Name of the resource
#' @param region: AWS region of the EMR cluster
#' @param credential_uri: path to credential file
#' @param cluster_id: ID of the EMR cluster
#' @param resource_id: optional resource ID to retrieve an existing resource
#' @param create: boolean, for internal use only. whether to create a new resource or not
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # TODO
#' @export
EMR <- function(skil, name, region, credential_uri, cluster_id=NULL, resource_id=NULL, create=TRUE) {
    skilr$EMR(
        skil=skil,
        name=name,
        region=region,
        credential_uri=credential_uri,
        cluster_id=cluster_id,
        resource_id=resource_id,
        create=create)
}

#' SKIL DataProc
#'
#' Google cloud engine DataProc compute resource
#'
#' @param skil: `Skil` server instance
#' @param name: Name of the resource
#' @param project_id: GCE project ID
#' @param region: GCE region
#' @param spark_cluster_name: DataProc cluster name
#' @param credential_uri: path to credential file
#' @param resource_id: optional resource ID to retrieve an existing resource
#' @param create: boolean, for internal use only. whether to create a new resource or not
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # TODO
#' @export
DataProc <- function(skil, name, project_id, region, spark_cluster_name, credential_uri, resource_id=NULL, create=TRUE) {
    skilr$DataProc(
        skil=skil,
        name=name,
        project_id=project_id,
        region=region,
        spark_cluster_name=spark_cluster_name,
        credential_uri=credential_uri,
        resource_id=resource_id,
        create=create)
}

#' SKIL HDInsight
#'
#' Azure HDInsight compute resource.
#'
#' @param skil: `Skil` server instance
#' @param name: Name of the resource
#' @param subscription_id: Azure subscription ID
#' @param resource_group_name: Azure resource group name
#' @param cluster_name: HDInsight cluster name
#' @param credential_uri: path to credential file
#' @param resource_id: optional resource ID to retrieve an existing resource
#' @param create: boolean, for internal use only. whether to create a new resource or not
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # TODO
#' @export
HDInsight <- function(skil, name, subscription_id, resource_group_name, cluster_name, credential_uri, resource_id=NULL, create=TRUE) {
    skilr$HDInsight(
        skil=skil,
        name=name,
        subscription_id=subscription_id,
        resource_group_name=resource_group_name,
        cluster_name=cluster_name,
        credential_uri=credential_uri,
        resource_id=resource_id,
        create=create)
}

#' SKIL YARN
#'
#' YARN compute resource for local Spark computation on YARN.
#'
#' @param skil: `Skil` server instance
#' @param name: Name of the resource
#' @param local_spark_home: full path to local Spark binary
#' @param resource_id: optional resource ID to retrieve an existing resource
#' @param create: boolean, for internal use only. whether to create a new resource or not
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # TODO
#' @export
YARN <- function(skil, name, local_spark_home, resource_id=NULL, create=TRUE) {
    skilr$YARN(
        skil=skil,
        name=name,
        local_spark_home=local_spark_home,
        resource_id=resource_id,
        create=create)
}

#' SKIL AzureStorage
#'
#' SKIL Azure storage resource.
#'
#' @param skil: `Skil` server instance
#' @param name: Name of the resource
#' @param container_name: Azure storage container name
#' @param credential_uri: path to credential file
#' @param resource_id: optional resource ID to retrieve an existing resource
#' @param create: boolean, for internal use only. whether to create a new resource or not
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # TODO
#' @export
AzureStorage <- function(skil, name, container_name, credential_uri, resource_id=NULL, create=TRUE) {
    skilr$AzureStorage(
        skil=skil,
        name=name,
        container_name=container_name,
        credential_uri=credential_uri,
        resource_id=resource_id,
        create=create)
}

#' SKIL GoogleStorage
#'
#' SKIL Google storage resource.
#'
#' @param skil: `Skil` server instance
#' @param name: Name of the resource
#' @param project_id: Google project ID
#' @param bucket_name: bucket name
#' @param credential_uri: path to credential file
#' @param resource_id: optional resource ID to retrieve an existing resource
#' @param create: boolean, for internal use only. whether to create a new resource or not
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # TODO
#' @export
GoogleStorage <- function(skil, name, project_id, bucket_name, credential_uri, resource_id=NULL, create=TRUE) {
    skilr$GoogleStorage(
        skil=skil,
        name=name,
        project_id=project_id,
        bucket_name=bucket_name,
        credential_uri=credential_uri,
        resource_id=resource_id,
        create=create)
}

#' SKIL HDFS
#'
#' SKIL HDFS storage resource.
#'
#' @param skil: `Skil` server instance
#' @param name: Name of the resource
#' @param name_node_host: host of the name node
#' @param name_node_port: port of the name node
#' @param credential_uri: path to credential file
#' @param resource_id: optional resource ID to retrieve an existing resource
#' @param create: boolean, for internal use only. whether to create a new resource or not
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # TODO
#' @export
HDFS <- function(skil, name, name_node_host, name_node_port, credential_uri, resource_id=NULL, create=TRUE) {
    skilr$HDFS(
        skil=skil,
        name=name,
        name_node_host=name_node_host,
        name_node_port=name_node_port,
        credential_uri=credential_uri,
        resource_id=resource_id,
        create=create)
}

#' SKIL S3
#'
#' SKIL S3 storage resource.
#'
#' @param skil: `Skil` server instance
#' @param name: Name of the resource
#' @param bucket: S3 bucket name
#' @param region: AWS region
#' @param credential_uri: path to credential file
#' @param resource_id: optional resource ID to retrieve an existing resource
#' @param create: boolean, for internal use only. whether to create a new resource or not
#'
#' @examples
#' \dontrun{
#' library(skilr)
#'
#' # TODO
#' @export
S3 <- function(skil, name, bucket, region, credential_uri, resource_id=NULL, create=TRUE) {
    skilr$S3(
        skil=skil,
        name=name,
        bucket=bucket,
        region=region,
        credential_uri=credential_uri,
        resource_id=resource_id,
        create=create)
}

