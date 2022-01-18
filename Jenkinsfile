pipeline {
    agent {
        docker { image 'node:14-stretch-slim'}
    }

    environment {
        IMAGE_NAME = "react-demo",
        AUTHOR = "hungnv"
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
                echo 'author is => ${env.AUTHOR}'
                echo 'author is => ${env.IMAGE_NAME}'
            }
        }
    }
}
