pipeline {
    agent none 
    stages {
        stage('clone git') {
            steps {
                git 'https://github.com/vanhung1999dev/jenkins.git'
            }
        }
        stage('test') {
            steps {
                echo 'hello world'
                echo 'nothing to say'
            }
        }
    }
}
