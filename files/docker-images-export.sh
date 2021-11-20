#!/bin/bash
docker save $(docker image ls | awk '{print $1}' | grep k8s.gcr.io) > /tmp/images.tar