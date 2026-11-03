pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'eu-north-1'
        DOCKER_IMAGE = 'amitkumardevops2026/devops-web:v1'
        DOCKER_EXE = 'C:/Users/Amit/AppData/Local/Programs/DockerDesktop/resources/bin/docker.exe'
        SSH_EXE = 'C:/Windows/System32/OpenSSH/ssh.exe'
        PATH = "C:/Windows/System32/OpenSSH;${env.PATH}"
    }

    stages {

        stage('Hello') {
            steps {
                echo 'Hello Amit! My Jenkins pipeline is working.'
            }
        }

        stage('DevOps Practice') {
            steps {
                echo 'Learning Jenkins, GitHub, Terraform, Docker and AWS EC2.'
            }
        }

        stage('Check Terraform Version') {
            steps {
                bat 'terraform -version'
            }
        }

        stage('Terraform Init') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-devops-practice']]) {
                    bat 'terraform init -reconfigure'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-devops-practice']]) {
                    bat 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-devops-practice']]) {
                    bat 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Approval') {
            steps {
                input message: 'Do you approve Terraform Apply?',
                      ok: 'Approve'
            }
        }

        stage('Terraform Apply') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-devops-practice']]) {
                    bat 'terraform apply -input=false tfplan'
                }
            }
        }

        stage('Docker Version') {
            steps {
                bat '"%DOCKER_EXE%" --version'
            }
        }

        stage('Docker Build') {
            steps {
                bat '"%DOCKER_EXE%" build -t %DOCKER_IMAGE% .\\docker-app'
            }
        }

        stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-credentials',
                    usernameVariable: 'DOCKER_USERNAME',
                    passwordVariable: 'DOCKER_PASSWORD'
                )]) {
                    bat 'echo %DOCKER_PASSWORD% | "%DOCKER_EXE%" login -u %DOCKER_USERNAME% --password-stdin'
                    bat '"%DOCKER_EXE%" push %DOCKER_IMAGE%'
                }
            }
        }

        stage('Prepare SSH') {
            steps {
                bat 'if not exist "%USERPROFILE%\\.ssh" mkdir "%USERPROFILE%\\.ssh"'
                bat '"C:\\Windows\\System32\\OpenSSH\\ssh-keyscan.exe" -H 51.20.181.236 >> "%USERPROFILE%\\.ssh\\known_hosts"'
            }
        }

        stage('Deploy to AWS EC2') {
            steps {
                sshagent(credentials: ['ec2-ssh-key']) {
                    bat '"%SSH_EXE%" -o StrictHostKeyChecking=yes ec2-user@51.20.181.236 "sudo docker pull %DOCKER_IMAGE% && (sudo docker rm -f devops-web-v1-container || true) && sudo docker run -d --restart unless-stopped --name devops-web-v1-container -p 8081:80 %DOCKER_IMAGE% && sudo docker ps --filter name=devops-web-v1-container"'
                }
            }
        }
    }
}