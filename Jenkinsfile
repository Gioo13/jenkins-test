#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("Build docker images") {
            steps {
                bat 'docker build -t terraform .'
                bat 'docker run -it terraform'
            }
        }
        stage("Terraform init") {
            steps {
                bat 'terraform --version'
            }
        }
    }
}
