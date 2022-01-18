pipeline {
    agent {
        docker { image 'node:14-stretch-slim'}
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
                sh 'npm run test'
            }
        }
    }
}
