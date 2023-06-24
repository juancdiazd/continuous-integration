pipeline {
    agent any

    stages {
        stage('docker build') {
            steps {
                script {
                    bat "docker.build -f Dockerfile -t  juancdiazd/continuous-integration:latest-${BUILD_ID}"
                }
            }
        }
        stage('docker push') {
            steps {
                script {
                    bat "docker push juancdiazd/continuous-integration:latest-${BUILD_ID}"
                }
            }
        }
    }
}