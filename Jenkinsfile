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
        //stage('Deploy') { 
           // steps {
                // 
            //}
        //}
    }
}