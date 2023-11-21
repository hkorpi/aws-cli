#!/usr/bin/env bash

docker build --build-arg uid=$UID --build-arg gid=$(id -g) . --tag aws-cli-sm

