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

