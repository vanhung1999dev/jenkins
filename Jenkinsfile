pipeline {
    agent any
    stages {
        stage('clone git') {
            steps {
                git 'https://github.com/vanhung1999dev/jenkins.git'
            }
        }
        stage('test') {
            steps {
                sh 'pwd'
            }
        }
    }
}
