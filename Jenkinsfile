pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'eu-north-1'
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello Amit! My Jenkins pipeline is working.'
            }
        }

        stage('DevOps Practice') {
            steps {
                echo 'Learning Jenkins, GitHub and Terraform.'
            }
        }

        stage('Check Terraform Version') {
            steps {
                bat '"C:\\Terraform\\terraform.exe" -version'
            }
        }

        stage('Terraform Init') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-devops-practice']]) {
                    bat '"C:\\Terraform\\terraform.exe" init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-devops-practice']]) {
                    bat '"C:\\Terraform\\terraform.exe" validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-devops-practice']]) {
                    bat '"C:\\Terraform\\terraform.exe" plan'
                }
            }
        }
    }
}