#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage("Terragrunt init") {
            steps {
                sh "terraform --version"
            }
        }
    }
}