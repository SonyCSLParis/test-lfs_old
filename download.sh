#!/bin/bash

DATASET=$1
TEMPFILE=$(mktemp /tmp/XXXX.zip)

# remove created temporary archive at the end of the script
trap 'rm $TEMPFILE' EXIT

# merge the split archive and unzip it
zip -F $DATASET.zip --out $TEMPFILE && unzip $TEMPFILE # && rm $DATASET.z*