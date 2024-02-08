#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("Build docker images") {
            steps {
                bat 'docker build -t terraform_image .'
                bat 'docker images'
                //bat 'docker run -i --name terraform terraform_image'
                //bat 'docker exec -u 0 -i terraform terraform --version'
            }
        }
        stage("Setup") {
            steps {
                script {
                    bat "docker stop container || true"
                    bat "docker rm container || true"
                    def dockerImage ='terraform_image'
                    docker.image(dockerImage).pull()
                    def containerId = docker.image(dockerImage).run("--user root --rm -it -v ${pwd()}:/mnt --name terraform_container")
                }
            }
        }
        stage("Run Script") {
            steps {
                bat "docker exec container /bin/bash -c 'terraform --version'"
            }
        }
    }
}
