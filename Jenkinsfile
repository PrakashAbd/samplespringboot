pipeline {
    agent any 
    tools {
    maven 'mvn'
  }
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
    sh 'curl -X POST http://localhost:8080/shutdown || true'
    // copy file to target location
    sh 'cp target/*.jar /tmp/'
    // start the application
    sh 'nohup java -jar /tmp/*.jar &'
    // wait for application to respond
    sh 'while ! httping -qc1 http://localhost:8080 ; do sleep 1 ; done'
           }
        }
    }
}