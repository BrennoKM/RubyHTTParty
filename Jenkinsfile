#!grovvy
pipeline {
    agent any

    stages {
        stage('Docker Build'){
            steps {
                sh script: 'docker build -t cucumber/httparty .'
            }
        }

        stage('Docker Run'){
            steps {
                sh script: 'docker run --name httparty cucumber/httparty $@'
            }
        }

    }

    post {
        always {
            sh script: 'docker rm $(docker ps -a -q)'
            sh script: 'docker rmi $(docker images -aq)'
        }
    }
} 