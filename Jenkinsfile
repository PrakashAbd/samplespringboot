pipeline {
    agent any 
    tools {
    maven 'M3'
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
        //stage('Deploy') { 
           // steps {
                // 
            //}
        //}
    }
}