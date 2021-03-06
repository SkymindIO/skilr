% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{Model}
\alias{Model}
\title{SKIL Model
wrapper for DL4J, Keras, TensorFlow and other models
SKIL has a robust model storage, serving, and import system for supporting major 
deep learning libraries.
SKIL can be used for end-to-end training, configuration, and deployment of models 
or alternatively you can import models into SKIL.}
\usage{
Model(model = NULL, model_id = NULL, name = NULL, version = NULL,
  experiment = NULL, labels = "", verbose = FALSE, create = TRUE)
}
\arguments{
\item{model:}{Model file path or  model instance}

\item{model_id:}{integer. Unique id for model. If NULL, a unique id will be generated.}

\item{name:}{string. Name for the model.}

\item{version:}{integer. Version of the model. Defaults to 1.}

\item{experiment:}{`Experiment` instance. If NULL, an `Experiment` object will be created internally.}

\item{labels:}{string. Labels for this model}

\item{verbose:}{boolean. If TRUE, prints api response.}

\item{create:}{boolean. Internal. Do not use.}
}
\description{
SKIL Model
wrapper for DL4J, Keras, TensorFlow and other models
SKIL has a robust model storage, serving, and import system for supporting major 
deep learning libraries.
SKIL can be used for end-to-end training, configuration, and deployment of models 
or alternatively you can import models into SKIL.
}
\examples{
\dontrun{
library(skilr)

# Creating a SKIL experiment
skil  <- Skil(host='localhost', port=9008, user_id='admin', password='admin')
ws    <- Workspace(skil, name='test_workspace')
exp   <- Experiment(ws, name='test_experiment')
model <- Model(model="keras.h5", name="my_keras_model", experiment=exp)

}
}
