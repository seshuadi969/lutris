stage('Run Container') {
    steps {
        sh '''
            # Remove old container if it exists
            docker rm -f lutris-container || true

            # Run fresh container
            docker run -d -p 5000:5000 --name lutris-container lutris-app
        '''
    }
}
