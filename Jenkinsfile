pipeline {
    agent any

    stages {
        stage('docker build') {
            steps {
                script {
                    sh "docker build -f Dockerfile -t  juancdiazd/continuous-integration-${BUILD_ID}"
                }
            }
        }
        stage('docker push') {
            steps {
                script {
                    sh "docker push juancdiazd/continuous-integration-${BUILD_ID}"
                }
            }
        }
    }
}