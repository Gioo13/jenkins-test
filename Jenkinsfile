#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("Build docker images") {
            steps {
                bat 'docker build -t terraform .'
                bat 'docker run -i terraform'
                bat 'docker exec -u 0 -i terraform terraform --version'
            }
        }
    }
}
