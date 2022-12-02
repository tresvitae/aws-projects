#!/bin/bash

# Input version
echo "Enter image tag:"
read tagnumber
sed -i "s/^version.*/version: $tagnumber/" helm-test-chart/Chart.yaml
# sudo with aws-cli permission
helm package helm-test-chart
helm push helm-test-chart-$tagnumber.tgz oci://326683497037.dkr.ecr.us-west-2.amazonaws.com