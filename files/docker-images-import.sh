#!/bin/bash
scp k0:/tmp/images.tar .
docker load < images.tar
rm -rf images.tar