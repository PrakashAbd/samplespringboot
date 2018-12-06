pipeline {
    agent any 
    //tools {
    //maven 'maven3'
 // }
    stages {
        stage('Build') { 
            steps {
               sh 'mvn clean package'
            }
        }
        stage('SonarQube Analysis'){
            withSonarQubeEnv('SOnarQube'){
                sh "${mvnHome/bin/mvn} sonar:sobar"
            }def mvnHome = tool name: 'maven-3', type : 'maven'
        }
        //stage('Test') { 
            //steps {
                // 
            //}
        //}
        stage('Deploy') { 
           steps {
    //sh 'curl -X POST http://localhost:10000/shutdown || true'
    // copy file to target location
    //sh 'cp target/*.jar /tmp/'
    // start the application
    sh 'nohup java -jar /tmp/*.jar &'
    // wait for application to respond
   // sh 'while ! httping -qc1 http://localhost:10000 ; do sleep 1 ; done'
           }
        }
    }
}
