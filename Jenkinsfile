#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("Build docker images") {
            steps {
                bat 'docker build -t terraform_image .'
                bat 'docker run -i --name terraform terraform_image'
                bat 'docker exec -u 0 -i terraform terraform --version'
            }
        }
    }
}
