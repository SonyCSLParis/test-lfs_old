#!/bin/bash

DATASET=$1

echo 'Zipping dataset $DATASET...'
zip -r -s 1500m $DATASET.zip $DATASET && git lfs track "$DATASET.z*" && git add $DATASET.z* && git commit -m "Added dataset $DATASET to the repo using Git LFS" && git push