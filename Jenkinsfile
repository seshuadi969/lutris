pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/seshuadi969/lutris.git'
            }
        }

        stage('Build Docker Image') {
                script {
                    sh 'docker build -t lutris-app .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop old container if running
                    sh 'docker stop lutris-container || true && docker rm lutris-container || true'
                    
                    // Run new container
                    sh 'docker run -d -p 5000:5000 --name lutris-container lutris-app'
                }
            }
        }
    }

