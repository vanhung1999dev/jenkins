pipeline {
    agent any
    stages {
        stage('clone git') {
            steps {
                git 'https://github.com/vanhung1999dev/jenkins.git'
            }
        }
        stage('test') {
            agent {
                docker { image 'node:14-stretch-slim'}
            }
            steps {
                echo 'version of nodejs'
                sh 'node -v' 
            }
        }
    }
}
