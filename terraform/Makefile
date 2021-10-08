#----------------------
# Makefile Commands
#----------------------

all: prepare-documentation prepare-tfvars tf-setup validate-code create-environment

validate-code: tf-validate tf-format

create-environent: tf-setup tf-plan tf-apply

destroy-environment: tf-setup tf-plan-destroy tf-apply-destroy

prepare-tfvars: cleanup-tfvars prepare-tfvars

prepare-documentation: cleanup-docs prepare-readme

#----------------------
# Terraform Steps
#----------------------

terra-tests:
	terraform init && terraform validate && terraform plan -out main.tfplan && checkov -f create-remote-storage.tf

tf-setup: 
	./bootstrap/init.sh

tf-format:
	@echo "############################"
	@echo "📝 Validating Code..."
	@echo "############################"
	@echo ""
	@terraform format -check
	@echo "...Done 🏁"

tf-validate:
	@echo "############################"
	@echo "🖥 Validating Syntax..."
	@echo "############################"
	@echo ""
	@terraform validate
	@echo "...Done 🏁"

tf-plan: 
	@echo "############################"
	@echo "Creating Execution Plan..."
	@echo "############################"
	@echo ""
	@terraform plan -out ./plan/plan.tfplan
	@echo "...Done 🏁"

tf-apply:
	@echo "############################"
	@echo "Applying Execution Plan..."
	@echo "############################"
	@echo ""
	@terraform apply -auto-approve ./plan/plan.tfplan
	@echo "...Done 🏁"

tf-plan-destroy: 
	@echo "############################"
	@echo "Creating Execution Plan to destroy all..."
	@echo "############################"
	@echo ""
	@terraform plan -destroy -out ./plan/plan.tfplan
	@echo "...Done 🏁"

tf-apply-destroy:
	@echo "############################"
	@echo "Applying Execution Plan to destroy all..."
	@echo "############################"
	@echo ""
	@terraform apply -destroy -auto-approve ./plan/plan.tfplan
	@echo "...Done 🏁"

#----------------------
# Documentation Steps
#----------------------
.PHONY: cleanup-docs

cleanup-docs: 
	@rm ./README.md

prepare-readme: 
	@echo "Preparing all Environment Documentation..."
	@terraform-docs -c ./docs/.readme.yml . > README.md
	@echo "...Done 🏁"

.PHONY: cleanup-tfvars

cleanup-tfvars:
	@rm ./terraform.tfvars

prepare-tfvars:
	@echo "Preparando arquivo de Tfvars..."
	@terraform-docs -c ./docs/.terraform-docs.yml . > terraform.tfvars
	@echo "...Done 🏁"