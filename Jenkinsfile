pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "neha-web-app"
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Pulls code from your GitHub
                git 'https://github.com/neha0438/aws-devops-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Building the image using Dockerfile
                sh 'docker build -t ${DOCKER_IMAGE} .'
            }
        }

        stage('Deploy to Server') {
            steps {
                // Running the container on port 80
                sh 'docker run -d -p 80:80 --name web-container ${DOCKER_IMAGE}'
            }
        }
    }
