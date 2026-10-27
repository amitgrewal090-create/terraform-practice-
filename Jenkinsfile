pipeline {
    agent any

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
    }
}