pipeline {

    agent any
    tools {
        maven 'Maven 3.5.2'
    }
    stages {
        stage('Example') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}
