#!/bin/bash

# Set the image name
IMAGE_NAME="your-image-name"

# Run the OpenSCAP scan
oscap-docker image "$IMAGE_NAME" oval eval --results results.xml --report report.html /path/to/your/oval/definition/file.xml

# Check the scan results and exit with an error code if there are any high-risk vulnerabilities
if grep -q 'false' results.xml; then
  echo "High-risk vulnerabilities found. Failing the scan."
  exit 1
else
  echo "No high-risk vulnerabilities found. Scan passed."
  exit 0
fi
