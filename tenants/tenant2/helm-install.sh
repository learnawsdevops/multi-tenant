#!/bin/bash
helm upgrade --install tenant2 ../../modules/helm-chart -n tenant2 -f values.yaml
