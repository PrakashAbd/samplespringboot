pipeline {
    agent any 
    tools {
    maven '3'
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