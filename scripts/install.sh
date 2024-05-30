#!/bin/bash

cd $(dirname $0)/install

for file in *.sh; do
  bash $file
done
