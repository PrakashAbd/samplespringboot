pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
               sh './mvnw -Dmaven.test.failure.ignore=true clean verify'
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