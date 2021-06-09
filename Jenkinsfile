pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
        stage('Test') {
            parallel {
                stage('Unit Test') {

                    steps {
                        sh 'mvn test' 
                    }

                }
                stage('Integration Test') {

                    steps {
                        sh 'mvn verify
' 
                    }
                }
        }
        stage('Publish-docker-image') {
            steps {
                sh 'docker build . -t mukesh236/java-helloworld-2.0'
            }
        }
    }
}