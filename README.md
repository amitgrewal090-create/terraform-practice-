Terraform DevOps Practice Project



Project Overview



This project is part of my hands-on DevOps learning journey. I am learning Git, GitHub, Docker, Terraform, and Jenkins step by step.



The main goal is to understand Infrastructure as Code (IaC), version control, and CI/CD pipeline automation.



Technologies Used



\- Git and GitHub: Version control and project management.

\- Docker: Practicing Linux commands and container basics.

\- Terraform: Learning infrastructure configuration using code.

\- Jenkins: Learning pipeline automation and build execution.

\- AWS: Planned for cloud infrastructure practice after account activation.



Project Files



\- "main.tf" – Main Terraform configuration.

\- "aws.tf" – AWS provider configuration.

\- "s3.tf" – S3 resource configuration.

\- "variables.tf" – Variable declarations.

\- "terraform.tfvars" – Variable values for practice.

\- "Jenkinsfile" – Jenkins pipeline definition.

\- ".gitignore" – Files excluded from Git tracking.



Terraform Practice



The project helps me understand Terraform configuration, variables, provider setup, and infrastructure planning.



Commands used during practice:



terraform init

terraform validate

terraform plan



These commands initialize Terraform, validate configuration, and generate an execution plan. They do not, by themselves, create infrastructure.



Jenkins CI/CD Practice



Jenkins is used to learn pipeline automation.



The pipeline documentation will include:



\- Source code integration with GitHub.

\- Pipeline stages and their purpose.

\- Build execution results.

\- Errors and troubleshooting, where applicable.



Current Project Status



\- Practicing Git and GitHub.

\- Learning Docker and Linux commands.

\- Practicing Terraform configuration.

\- Learning Jenkins pipeline execution.

\- AWS integration is pending account activation.



Learning Objective



My objective is to build practical DevOps skills by integrating these tools into a documented project and gradually improving automation.



\---



Author: Amit Kumar



Jenkins Pipeline Documentation



Overview



Jenkins is used in this project to learn pipeline automation and understand how code can be executed through a Jenkins job integrated with GitHub.



Pipeline Stages



Stage 1: Hello



Purpose: To verify that the Jenkins pipeline executes successfully and displays a custom message.



Console Output:

"Hello Amit! My first Jenkins pipeline is working."



Result: Successful.



Stage 2: DevOps Practice



Purpose: To display the technologies being practiced as part of my DevOps learning journey.



Console Output:

"Learning Jenkins, GitHub and Terraform."



Result: Successful.



Build Execution Results



The Jenkins Console Output confirms that both pipeline stages executed successfully.



Build Status: SUCCESS



What I Learned:



\- How to execute a Jenkins pipeline.

\- How to define and run pipeline stages.

\- How to display messages using the "echo" step.

\- How to review build execution results in the Jenkins Console Output.

\- How Jenkins integrates with a GitHub-hosted project.



Testing Status



The current pipeline verifies basic stage execution and message output. A separate automated testing stage has not yet been implemented.



Future Improvements



\- Add a dedicated validation stage for Terraform configuration.

\- Integrate appropriate automated checks into the pipeline.

\- Document any future build failures and troubleshooting steps.

\- Explore automated pipeline triggers from GitHub.



Terraform Configuration: File-by-File Explanation



This section explains the purpose of each Terraform configuration file used in this project.



1\. main.tf — Main Configuration and Output



The "main.tf" file contains the main Terraform configuration and defines the welcome message output.



Purpose:



\- Display a personalized welcome message.

\- Reference the "student\_name" variable.

\- Demonstrate how Terraform outputs work.



Example Output:



"Hello Amit, Welcome to Terraform!"



The actual output depends on the variable value supplied to Terraform.



2\. variables.tf — Variable Declaration



The "variables.tf" file declares the input variables used in the project.



Configuration:



\- Variable name: "student\_name"

\- Data type: "string"

\- Default value: "Rahul"



Purpose:



Input variables make Terraform configurations reusable. A variable can use its default value or receive another value through a variable definition file.



3\. terraform.tfvars — Variable Values



The "terraform.tfvars" file provides values for the declared Terraform variables.



Purpose:



\- Supply a custom value for "student\_name".

\- Separate variable values from the main configuration.

\- Demonstrate how Terraform uses input values.



For example, setting "student\_name" to "Amit" can produce a welcome message containing the name Amit.



Security Note: Variable definition files may contain sensitive values. They should be excluded from version control when appropriate.



4\. aws.tf — AWS Provider Configuration



The "aws.tf" file specifies the AWS provider configuration used by Terraform.



Configuration Details:



\- Provider source: "hashicorp/aws"

\- Provider version constraint: "6.0"

\- AWS Region: "eu-north-1"



Purpose:



\- Configure the AWS provider.

\- Specify the region in which AWS resources are intended to be managed.

\- Define the provider dependency required by the project.



Provider configuration alone does not confirm that the AWS account is activated or that cloud resources have been created.



5\. s3.tf — Amazon S3 Bucket Resource



The "s3.tf" file defines the Amazon S3 bucket resource for the DevOps practice project.



Purpose:



\- Demonstrate how AWS resources are declared using Terraform.

\- Configure an S3 bucket name.

\- Apply tags to identify and categorize the resource.



Important: The resource definition describes the intended infrastructure. Successful creation must be confirmed through a successful Terraform apply and verification in AWS.



6\. .gitignore — Repository and State File Protection



The ".gitignore" file excludes selected local files and directories from Git tracking.



The project includes patterns for:



\- "\*.tfstate"

\- ".tfstate."

\- "\*.tfvars"

\- ".terraform/"



Purpose:



\- Avoid committing Terraform state and backup files.

\- Keep local Terraform working files out of the repository.

\- Reduce the risk of exposing variable values.



Git ignore rules do not automatically remove files that are already tracked.



7\. Terraform Workflow



The following commands are used to practise the Terraform workflow:



Initialize the working directory:



"terraform init"



Downloads the required provider plugins and initializes the working directory.



Validate the configuration:



"terraform validate"



Checks whether the Terraform configuration is syntactically valid and internally consistent.



Review the execution plan:



"terraform plan"



Shows the proposed infrastructure changes without applying them.



Important: These commands do not create infrastructure by themselves. Resource creation requires "terraform apply", appropriate AWS account access, and successful verification.



Learning Outcome



Through this project, I am developing practical knowledge of Terraform configuration, input variables, outputs, provider setup, resource definitions, version control, and infrastructure planning.





