pipeline {
agent any

environment {
    AWS_DEFAULT_REGION = 'eu-north-1'
    DOCKER_IMAGE = 'amitkumardevops2026/devops-cicd-app:1.0'
    DOCKER_EXE = 'C:/Users/Amit/AppData/Local/Programs/DockerDesktop/resources/bin/docker.exe'
}

stages {

    stage('Hello') {
        steps {
            echo 'Hello Amit! My Jenkins pipeline is working.'
        }
    }

    stage('DevOps Practice') {
        steps {
            echo 'Learning Jenkins, GitHub, Terraform and Docker.'
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
}

}