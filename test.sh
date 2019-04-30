#!/bin/bash

# build Docker image
docker build -t nvidia-tacotron .

# run the notebook
docker run -it -w /tacotron -v $PWD:/tacotron -p 31337:31337 --runtime=nvidia nvidia-tacotron jupyter notebook inference.ipynb --ip=0.0.0.0 --port=31337 --allow-root

# open http://localhost:31337/tree and use the token you got from the docker run command log
