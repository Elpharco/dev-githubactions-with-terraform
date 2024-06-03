
Task: GitHub Actions workflow to deploy Terraform Resource on AWS console.

BLOCKER: Error while configuring Terraform S3 Backend- We initialised our code and applied to AWS (tfstate-file stored locally on local system). Hence, we had issues trying to move the state file to s3 bucket

SOLUTION: Simply running this command "terraform state push ./terraform.tfstate" (force push state to s3 backend), resolved this issue.

BLOCKER: Encountered issues with correctly referencing AWS Access Key ID and Secret Access Key in Github Actions workflow (pipeline.yml)
SOLUTION: The local system varaible MUST correspond with the GitHub Actions Secret variable

BLOCKER: Terraform configuration was trying to use a version of the AWS provider (5.52.0) that does not match the configured version constraint for the GitHub Actions workflow (pipeline.yml) (~> 0.14). Basically, we initially initialized Terraform without specifying a specific version in the provider.tf file, and as such, Terraform decided to initialize with it's latest version (5.52.0). 
So when we push our code, We got the below failed error msg in the workflow piipeline: 
Error: Failed to query available provider packages
Could not retrieve the list of available versions for provider hashicorp/aws:
locked provider registry.terraform.io/hashicorp/aws 5.52.0 does not match
configured version constraint ~> 0.14; must use terraform init -upgrade to allow selection of new versions

SOLUTION: Updated provider.tf file with the required terraform version to correspond with the version referenced in the pipeline.yml file, deleted the .terraform.lock.hcl, and then re initialised the code locally before finally pushing the pipeline.yml file to trigger Actions workflow deployment.



