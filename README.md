Terraform DevOps Practice Project



1\. Project Overview



This project is part of my hands-on DevOps learning journey. It demonstrates practical learning of Git, GitHub, Docker, Terraform, Jenkins, and AWS.



The main objective is to understand Infrastructure as Code (IaC), version control, and CI/CD pipeline automation.



2\. Technologies Used



\- Git and GitHub: Version control and source code management.

\- Docker: Practicing container basics and Linux commands.

\- Terraform: Defining and validating infrastructure using code.

\- Jenkins: Automating pipeline execution.

\- AWS: Practicing cloud infrastructure provisioning.



3\. Project Structure



The project includes the following configuration files:



File| Purpose

"main.tf"| Main Terraform configuration and output

"aws.tf"| AWS provider configuration

"s3.tf"| Amazon S3 bucket resource definition

"variables.tf"| Input variable declarations

"terraform.tfvars"| Variable values for local practice

"Jenkinsfile"| Jenkins pipeline definition

".gitignore"| Excludes selected local and Terraform files



4\. Terraform Practice



Terraform is used to define infrastructure through configuration files.



Commands Practiced



Initialize Terraform:



terraform init



Initializes the working directory and downloads required providers.



Validate Configuration:



terraform validate



Checks whether the Terraform configuration is valid.



Generate an Execution Plan:



terraform plan



Displays the proposed infrastructure changes without applying them.



Terraform Output



The project uses an input variable named "student\_name" to generate a welcome message.



Example:



Hello Rahul, welcome to Terraform!



The displayed name depends on the variable value supplied to Terraform.



5\. Jenkins CI/CD Pipeline



Jenkins is integrated with the GitHub-hosted project to practise automated pipeline execution.



The current Jenkinsfile contains six stages.



Stage| Purpose

Hello| Displays a welcome message

DevOps Practice| Displays the technologies being practised

Check Terraform Version| Checks the installed Terraform version

Terraform Init| Initializes the Terraform working directory

Terraform Validate| Validates the Terraform configuration

Terraform Plan| Generates a proposed infrastructure execution plan



Pipeline Execution Results



The Jenkins pipeline successfully executed the Terraform initialization, validation, and planning stages.



Observed results:



\- Terraform initialization completed successfully.

\- Terraform configuration validation passed.

\- Terraform generated an execution plan.

\- The plan reported: "1 to add, 0 to change, 0 to destroy".

\- Jenkins reported the build status as "SUCCESS".



The plan proposed creating an Amazon S3 bucket. Actual resource creation must be verified separately in AWS.



6\. AWS Configuration



The project uses the AWS provider with the following configuration:



\- Provider: "hashicorp/aws"

\- Region: "eu-north-1"

\- Resource: Amazon S3 bucket

\- Tags: "Name = DevOps-Practice", "Environment = Learning"



AWS credentials are configured in Jenkins using a stored credential rather than hard-coded access keys in the pipeline.



The Terraform plan does not create the S3 bucket. Resource creation requires a successful apply operation and verification of the resulting resource in AWS.



7\. Git and GitHub



Git and GitHub are used to manage and track project changes.



The repository contains the Terraform configuration and Jenkins pipeline definition.



The ".gitignore" file excludes selected Terraform state files, variable definition files, and local working directories.



Sensitive credentials and Terraform state files should not be committed to the repository.



8\. Current Project Status



\- Git and GitHub practice completed for the current project.

\- Docker and Linux fundamentals practised.

\- Terraform configuration, variables, initialization, validation, and planning practised.

\- Jenkins pipeline configured with six stages.

\- Jenkins pipeline execution completed successfully.

\- AWS S3 resource creation status requires separate verification.



9\. Learning Outcomes



Through this project, I am developing practical skills in:



\- Version control using Git and GitHub.

\- Container fundamentals using Docker.

\- Infrastructure as Code using Terraform.

\- Terraform variables, outputs, providers, and resource definitions.

\- CI/CD pipeline execution using Jenkins.

\- AWS provider configuration and infrastructure planning.

\- Troubleshooting and documenting build results.



10\. Future Improvements



\- Verify AWS resource status.

\- Practise Terraform apply and destroy workflows where appropriate.

\- Improve Jenkins pipeline automation.

\- Explore automated GitHub-triggered builds.

\- Add further validation and testing steps.

\- Expand the project with additional DevOps automation.



\---



Author: Amit Kumar



Project Type: Hands-on DevOps Learning Project

