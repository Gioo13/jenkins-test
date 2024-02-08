#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("Build docker images") {
            steps {
                bat 'docker build -t terraform .'
                bat 'docker run -e PATH="/usr/local/bin:${PATH}" terraform'
            }
        }
        stage("Terraform init") {
            steps {
                bat 'terraform --version'
            }
        }
    }
}
