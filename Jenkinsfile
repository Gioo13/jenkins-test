#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("Build docker images") {
            steps {
                sh 'docker build -t terraform .'
            }
        }
    }
}
