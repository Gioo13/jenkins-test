#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("Build docker images") {
            steps {
                bat 'docker build -t terraform .'
                bat 'docker run -it terraform'
                bat 'docker exec -u 0 -it terraform terraform --version'
            }
        }
    }
}
