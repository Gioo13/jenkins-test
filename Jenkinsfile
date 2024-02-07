#!/usr/bin/env groovy

pipeline {
    agent {
        sh 'docker build -t terraform .'
        sh 'docker run terraform'
    }

    stages {
        stage("Terragrunt init") {
            steps {
                sh "terraform --version"
            }
        }
    }
}
