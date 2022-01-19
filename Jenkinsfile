pipeline {
    agent {
        docker { image 'node:14-stretch-slim'}
    }

    environment {
        IMAGE = "react-demo"
    }

    stages {
        stage('clone git') {
            steps {
                git 'https://github.com/vanhung1999dev/jenkins.git'
            }
        }

        stage('test') {
            steps {
                sh 'node -v' 
                sh 'npm install'
                sh 'npm run test'
            }
        }

        stage('build') {
            steps {
                 sh "docker build -t ${IMAGE} . "
                 sh "docker image ls | grep ${DOCKER_IMAGE}"
                  withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh 'echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin'
                    sh "docker push ${IMAGE}"
                }
            }
        }
    }
}
