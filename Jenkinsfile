 pipeline {
     
    agent any

    stages {
        stage('Build') {
            steps {
                //run your build
                sh 'mvn clean package'
            }
            post {
                always {
                    //generate cucumber reports
                    cucumber '**/*.json'
                }
            }
        }
    }
}