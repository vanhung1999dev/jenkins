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
                echo 'this is path to project'
                sh 'pwd'
            }
        }
    }
}
