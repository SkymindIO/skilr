# SKIL: Deep learning model lifecycle management for humans

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/SkymindIO/skil-python/blob/master/LICENSE)

## R client for Skymind's intelligence layer (SKIL)

SKIL is an end-to-end deep learning platform. Think of it as a unified front-end for your deep learning training and deployment process. SKIL supports many popular deep learning libraries, such as Keras, TensorFlow and Deeplearning4J. SKIL decreases time-to-value of your AI applications by closing the common gap between experiments and production - bringing models to production fast and keeping them there. SKIL effectively acts as middleware for your AI applications and solves a range of common _production_ problems, namely:

- _Install and run anywhere_: SKIL integrates with your current cloud provider, custom on-premise solutions and hybrid architectures.
- _Easy distributed training on Spark_: Bring your Keras or TensorFlow model and train it on Apache Spark without any overhead. We support a wide variety of distributed storage and compute resources and can handle all components of your production stack.
- _Seamless deployment process_:  With SKIL, your company's machine learning product lifecycle can be as quick as your data scientist’s experimentation cycle. If you set up a SKIL experiment, model deployment is already accounted for, and makes product integration of deep learning models into a production-grade model server simple - batteries included.
- _Built-in reproducibility and compliance_: What model and data did you use? Which pre-processing steps were done? What library versions were used? Which hardware was utilized? SKIL keeps track of all this information for you.
- _Model organisation and versioning_: SKIL makes it easy to keep your various experiments organised, without interfering with your workflow. Your models are versioned and can be updated at any point.
- _Keep working as you're used to_: SKIL does not impose an entirely new workflow on you, just stay right where you are. Happy with your experiment and want to deploy it? Tell SKIL to deploy a service. Your prototype works and you want to scale out training with Spark? Tell SKIL to run a training job. You have a great model, but massive amounts of data for inference that your model can't process quickly enough? Tell SKIL to run an inference job on Spark.

## Installation

To install SKIL itself, head over to [skymind.ai](https://docs.skymind.ai/docs/installation). Probably the easiest way to get started is by using [docker](https://www.docker.com/):

```bash
docker pull skymindops/skil-ce
docker run --rm -it -p 9008:9008 skymindops/skil-ce bash /start-skil.sh
```

To use SKIL's R client, you have to install our Python client from PyPI first:

```bash
pip install skil
```

Next, you can install and load the R client from GitHub like this:
```R
devtools::install_github("SkymindIO/skilr")
library("skilr")
```

## Getting started:

In this section you're going to deploy a state-of-the-art object detection application. As a first step,  download [the TensorFlow model we pre-trained for you](https://github.com/deeplearning4j/dl4j-test-resources/blob/master/src/main/resources/tf_graphs/examples/yolov2_608x608/frozen_model.pb) and store it locally as `yolo.pb`. As the name suggests, this model is a [You Only Look Once (YOLO) model](https://pjreddie.com/darknet/yolo/).If you haven't done already, install and start SKIL as described in the last section.

For this quick example you only need three (self-explanatory) concepts from SKIL. You first create a SKIL `Model` from the model file `yolo.pb` you just downloaded. This `Model` becomes a SKIL `Service` by deploying it to a SKIL `Deployment`. That's all there is to it:

```R
library("skilr")

model <- Model('yolo.pb', model_id='yolo_42', name='yolo_model')
deployment <- Deployment()
service <- model$deploy(deployment, input_names=c('input'), output_names=c('output'))
```

TODO: use `devtools::install_github("swarm-lab/ROpenCVLite")` for detection or wrap opencv from Python
