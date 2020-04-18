all-in-one:
	@echo Building all-in-one AMI
	packer build -only all-in-one packer.json

api:
	@echo Building API server AMI
	packer build -only api packer.json

worker:
	@echo Building Worker server AMI
	packer build -only worker packer.json
