deploy: lint dependencies
	helm install -f bjr/values.yaml bjr --name bjr

upgrade: lint dependencies
	helm upgrade -f bjr/values.yaml bjr bjr

undeploy:
	helm delete --purge bjr

lint:
	helm lint -f bjr/values.yaml bjr

dependencies:
	helm dependency update bjr

init:
	kubectl create -f support/rbac-config.yaml
	helm init --service-account tiller

template:
	helm template -f bjr/values.yaml bjr
