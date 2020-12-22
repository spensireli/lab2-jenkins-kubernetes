#!/bin/bash

for x in jenkins-ns.yaml jenkins-sa.yaml jenkins-secrets.yaml jenkins-pv.yaml jenkins-pvc.yaml jenkins-deployment.yaml jenkins-svc.yaml
  do
    kubectl create -f $x
done

# for x in jenkins-svc.yaml jenkins-deployment.yaml jenkins-pvc.yaml jenkins-pv.yaml jenkins-secrets.yaml jenkins-sa.yaml jenkins-ns.yaml
#   do
#     kubectl delete -f $x
# done

# for x in jenkins-svc.yaml jenkins-deployment.yaml jenkins-pvc.yaml jenkins-pv.yaml jenkins-secrets.yaml jenkins-sa.yaml jenkins-ns.yaml
#   do
#     kubectl apply -f $x
# done
