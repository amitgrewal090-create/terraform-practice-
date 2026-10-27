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

    stage('Terraform Init') {
        steps {
            bat '"C:\\Terraform\\terraform.exe" init'
        }
    }

    stage('Terraform Validate') {
        steps {
            bat '"C:\\Terraform\\terraform.exe" validate'
        }
    }

    stage('Terraform Plan') {
        steps {
            bat '"C:\\Terraform\\terraform.exe" plan'
        }
    }
}

}