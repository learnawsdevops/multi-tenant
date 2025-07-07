#!/bin/bash
helm upgrade --install tenant1 ../../modules/helm-chart -n tenant1 -f values.yaml
