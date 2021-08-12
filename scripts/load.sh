#!/bin/bash

source .bingo/variables.env

project=nyan_cat

for file in metrics/$project/*; do
  filename=$(basename $file)
  echo "Loading $filename"
  $PROMTOOL tsdb create-blocks-from openmetrics "metrics/$project/$filename"
done
