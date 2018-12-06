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
        //stage('Test') { 
            //steps {
                // 
            //}
        //}
        stage('Deploy') { 
           steps {
    //sh 'curl -X POST http://localhost:10000/shutdown || true'
    // copy file to target location
    sh 'cp target/*.jar /tmp/'
    // start the application
    sh 'nohup java -jar /tmp/*.jar &'
    // wait for application to respond
   // sh 'while ! httping -qc1 http://localhost:10000 ; do sleep 1 ; done'
           }
        }
        
        stage('SCM') {
    git 'https://github.com/PrakashAbd/samplespringboot.git'
  }
  stage('SonarQube analysis') {
    // requires SonarQube Scanner 2.8+
   
    withSonarQubeEnv('SonarQube') {
      sh 'mvn sonar:sonar \
        -Dsonar.host.url=http://jekai38211dns.eastus.cloudapp.azure.com \
        -Dsonar.login=795e7bd8dcdeff3c705fb8657c918017c30d5bb7' 
 

    }
  }
    }
}
