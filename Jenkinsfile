pipeline {
    agent any
    stages {
        stage('checkcout') {
         steps {    
           git credentialsId: '7802c984-f649-4d39-bcf6-8d95b0ad95ae', url: 'https://github.com/cjpcloud/rahul.git' 
            }}
        stage('Build') {
            steps { 
             sh 'mvn clean package'
            }}
        stage('Test') {
           steps {
             junit stdioRetention: '', testResults: 'target/surefire-reports/*.xml'
            }    }
        stage('image') {
           steps {
             sh 'docker build -t rahul:1.0 .'
             
            }} 
    }
}
