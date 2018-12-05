pipeline {
    agent any 
    //tools {
    //maven 'maven3'
 // }
    try {
        stage("Building SONAR ...") {
            sh './gradlew clean sonarqube'
        }
    } catch (e) {
        emailext attachLog: true, body: 'See attached log', subject: 'BUSINESS Build Failure', to: 'abc@gmail.com'
        step([$class: 'WsCleanup'])
        return
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
    //sh 'curl -X POST http://localhost:10000/shutdown || true'
    // copy file to target location
    sh 'cp target/*.jar /tmp/'
    // start the application
    sh 'nohup java -jar /tmp/*.jar &'
    // wait for application to respond
   // sh 'while ! httping -qc1 http://localhost:10000 ; do sleep 1 ; done'
           }
        }
    }
}
