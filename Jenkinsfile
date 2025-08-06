pipeline {
    agent any
    tools {
        maven 'maven3.9.9'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'mvn install -DskipTests=true'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn package -DskipTests=true'
            }
        }
    }
}