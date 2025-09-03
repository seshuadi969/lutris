pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/seshuadi969/lutris.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t lutris-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker run -d -p 5000:5000 --name lutris-container lutris-app
                '''
            }
        }
    }
}

