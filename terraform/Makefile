deploy: config
	@echo Deploying BJR Server to AWS
	terraform apply -var profile=$(AWS_PROFILE) -var region=$(AWS_REGION) -var-file=deployment.tfvars

undeploy: config
	@echo Undeploying BJR Server from AWS
	terraform destroy -var profile=$(AWS_PROFILE) -var region=$(AWS_REGION) -var-file=deployment.tfvars

plan: config
	@echo Doing a deployment dry-run
	terraform plan -var profile=$(AWS_PROFILE) -var region=$(AWS_REGION) -var-file=deployment.tfvars

clean:
	rm -rf .terraform

config: clean
	terraform fmt
	terraform init -get=true -get-plugins=true -verify-plugins=true
