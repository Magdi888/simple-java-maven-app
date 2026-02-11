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
        stage('Docker Build') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'PASSWORD', usernameVariable: 'USER')]) {
                    sh 'docker build -t amagdi888/java:v2 .'
                    sh 'echo $PASSWORD | docker login -u $USER --password-stdin'
                    sh 'docker push amagdi888/java:v2'
                }
            }
        }
    }
}
