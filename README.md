Terraform DevOps Practice Project



1\. Project Overview



This project is part of my hands-on DevOps learning journey. It demonstrates the practical implementation of Git, GitHub, Docker, Terraform, Jenkins, and AWS.



The main objective is to understand Infrastructure as Code (IaC), containerization, cloud infrastructure provisioning, version control, and CI/CD pipeline automation.



This project includes a custom Docker-based website, AWS infrastructure provisioning using Terraform, and automated Terraform execution through Jenkins.



2\. Technologies Used



\- Git and GitHub: Version control and source code management.

\- Docker: Building custom images and running containers.

\- Nginx: Hosting the custom HTML website inside a Docker container.

\- Terraform: Infrastructure as Code and AWS resource management.

\- Jenkins: CI/CD pipeline automation.

\- AWS: Cloud infrastructure provisioning, including EC2 and S3.

\- Linux: Basic Linux commands and server administration.



3\. Project Structure



The project contains the following configuration files and directories:



File/Directory| Purpose

"main.tf"| Main Terraform configuration and outputs

"aws.tf"| AWS provider configuration and S3 backend

"ec2.tf"| EC2 instance configuration

"s3.tf"| Amazon S3 bucket and security configuration

"variables.tf"| Input variable declarations

"terraform.tfvars"| Variable values for local practice

"Jenkinsfile"| Jenkins pipeline definition

".gitignore"| Excludes selected local and Terraform files

"docker-app/"| Custom Docker website application

"docker-app/Dockerfile"| Instructions to build the Docker image

"docker-app/index.html"| HTML webpage hosted through Nginx



4\. Terraform Practice



Terraform is used to define and manage AWS infrastructure through configuration files.



Commands Practiced



Initialize Terraform:



terraform init



Validate the configuration:



terraform validate



Generate an execution plan:



terraform plan



Apply the configuration:



terraform apply



Display Terraform-managed resources:



terraform state list



Terraform Output



The project uses an input variable named "student\_name" to generate a welcome message.



Example:



Hello Amit, welcome to Terraform!



The displayed name depends on the variable value supplied to Terraform.



5\. AWS Infrastructure



The project uses the AWS provider to practise cloud infrastructure provisioning.



AWS Configuration



\- Provider: "hashicorp/aws"

\- Region: "eu-north-1"

\- Services: Amazon EC2 and Amazon S3



Amazon S3



An S3 bucket was created using Terraform.



The following security configurations were implemented:



\- Bucket versioning enabled.

\- Server-side encryption using SSE-S3 (AES256).

\- S3 Block Public Access settings enabled.



The bucket configuration was applied successfully.



Amazon EC2



An Amazon Linux EC2 instance was provisioned using Terraform.



The instance was used for practising:



\- EC2 instance provisioning.

\- SSH connectivity.

\- Linux server administration.

\- Docker installation and verification.

\- Cloud-based application deployment.



6\. Docker Custom Website Deployment



A custom website was created and deployed using Docker.



Dockerfile



The Dockerfile uses the lightweight Nginx Alpine image.



FROM nginx:alpine



COPY index.html /usr/share/nginx/html/index.html



EXPOSE 80



Build Docker Image



docker build -t amit-devops-website:1.0 ./docker-app



Verify Docker Image



docker images



Run Docker Container



docker run -d -p 8081:80 --name amit-devops-container amit-devops-website:1.0



Verify Running Container



docker ps



Access the Website



Open the following address in a web browser:



http://localhost:8081



The custom website was successfully deployed and verified in the browser.



Docker Application Details



\- Image Name: "amit-devops-website:1.0"

\- Container Name: "amit-devops-container"

\- Application Server: Nginx

\- Host Port: "8081"

\- Container Port: "80"



7\. Jenkins CI/CD Pipeline



Jenkins is integrated with the GitHub-hosted project to practise automated pipeline execution.



The Jenkins pipeline uses Terraform commands to validate and manage infrastructure.



Pipeline Stages



Stage| Purpose

Hello| Displays a welcome message

DevOps Practice| Displays the technologies being practised

Check Terraform Version| Checks the installed Terraform version

Terraform Init| Initializes the Terraform working directory and reconfigures the S3 backend

Terraform Validate| Validates the Terraform configuration

Terraform Plan| Generates an infrastructure execution plan

Approval| Waits for manual approval before applying changes

Terraform Apply| Applies the approved Terraform execution plan



Terraform Backend Initialization in Jenkins



The Jenkins pipeline uses the following command:



bat 'terraform init -reconfigure'



This ensures that the Jenkins workspace uses the configured Amazon S3 remote backend.



Pipeline Execution Results



The Jenkins pipeline executed successfully.



Observed results:



\- GitHub repository checkout completed successfully.

\- Terraform initialization completed successfully.

\- S3 remote backend was configured successfully.

\- Terraform configuration validation passed.

\- Terraform plan completed successfully.

\- Manual approval was provided.

\- Terraform Apply completed successfully.

\- Jenkins reported the final build status as "SUCCESS".



The final execution reported:



Apply complete! Resources: 0 added, 0 changed, 0 destroyed.



This indicated that the existing infrastructure already matched the Terraform configuration at that execution.



8\. Git and GitHub Integration



Git and GitHub are used to manage and track project changes.



The repository contains Terraform configuration files, Jenkins pipeline configuration, and Docker application files.



The custom Docker application files were committed and pushed successfully to GitHub.



The ".gitignore" file excludes selected Terraform state files and local working directories.



Sensitive credentials and Terraform state files should not be committed to the repository.



9\. Current Project Status



The following activities have been completed:



\- Git and GitHub version control practice.

\- Linux fundamentals and command-line practice.

\- Docker image creation and container deployment.

\- Custom Nginx website deployment and browser verification.

\- Terraform initialization, validation, planning, and apply.

\- AWS EC2 instance provisioning and connectivity practice.

\- Amazon S3 bucket creation and security configuration.

\- Jenkins CI/CD pipeline configuration and successful execution.

\- Docker application files uploaded to GitHub.

\- Terraform remote backend configuration and verification.



10\. Learning Outcomes



Through this project, I am developing practical skills in:



\- Version control using Git and GitHub.

\- Containerization using Docker.

\- Custom Docker image creation.

\- Application deployment using Nginx.

\- Infrastructure as Code using Terraform.

\- AWS EC2 and S3 resource management.

\- Terraform variables, outputs, providers, and resources.

\- CI/CD pipeline automation using Jenkins.

\- Troubleshooting and documenting deployment activities.



Terraform Remote Backend Configuration and Verification



Configured an Amazon S3 remote backend to store Terraform state files separately from the infrastructure resources managed by Terraform.



Backend Configuration:



\- Backend Type: Amazon S3

\- Backend Bucket: "amit-terraform-state-2026-unique-3010"

\- State File Key: "terraform-practice/terraform.tfstate"

\- AWS Region: "eu-north-1"



Verification Performed:



1\. Verified the existence of the remote backend S3 bucket using AWS CLI.

2\. Confirmed that the Terraform state file exists in the configured S3 bucket.

3\. Verified server-side encryption using AES256.

4\. Confirmed that an S3 Version ID is available for the state object.



Result: Terraform remote state storage was successfully verified in Amazon S3.



11\. Future Improvements



\- Integrate Docker image build and validation into Jenkins.

\- Explore automated GitHub-triggered Jenkins builds.

\- Improve CI/CD pipeline automation.

\- Practise Docker deployment on AWS EC2.

\- Implement additional infrastructure security configurations.

\- Expand the project with monitoring and automation tools.



\---



Author: Amit Kumar



Project Type: Hands-on DevOps Learning Project

