#!/bin/bash

echo "Iniciando upload para S3..."

BUCKET="lab-anderson-albuquerque"
DIR="/dados"

for file in $DIR/*; do
  aws s3 cp "$file" s3://$BUCKET/outputs/
done

echo "Upload finalizado!"
