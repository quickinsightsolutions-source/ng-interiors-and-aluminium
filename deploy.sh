#!/bin/bash
# Edit PROJECT_ID and BUCKET_NAME before running
PROJECT_ID="your-project-id"
BUCKET_NAME="your-bucket-name"

gcloud services enable storage.googleapis.com

gsutil mb -p $PROJECT_ID -c STANDARD -l ASIA-SOUTH1 gs://$BUCKET_NAME/
gsutil iam ch allUsers:objectViewer gs://$BUCKET_NAME
gsutil rsync -R . gs://$BUCKET_NAME
gsutil web set -m index.html -e 404.html gs://$BUCKET_NAME
echo "Deployed"