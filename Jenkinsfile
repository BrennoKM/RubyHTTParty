#!grovvy
pipeline {
    agent any

    stages {
        stage('Docker Build') {
            steps {
                sh script: 'docker build -t cucumber/httparty .'
            }
        }

        stage('Docker Run') {
            steps {
                script {
                    try {
                        sh script: 'docker run -v "$(pwd)/reports:/reports" --name httparty cucumber/httparty $@'
                        sh script: 'ls $(pwd)/reports'
                    } catch (exception) {
                        echo exception.getMessage()
                        currentBuild.result = 'UNSTABLE'
                    }
                }
            }
        }

        stage('Generating Test Report') {
            steps {
                cucumber (
                    fileIncludePattern: '*.json',
                    jsonReportDirectory: 'reports',
                    buildStatus: currentBuild.result
                )
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