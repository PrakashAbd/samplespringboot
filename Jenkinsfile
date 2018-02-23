node {
 
    withMaven(maven:'maven') {
 
        stage('Build') {
            sh 'mvn clean install'
 
            def pom = readMavenPom file:'pom.xml'
            print pom.version
            env.version = pom.version
        }
 
        stage('Image') {
            dir ('account-service') {
                def app = docker.build "localhost:5000/samplespringboot:${env.version}"
                app.push()
            }
        }
 
        stage ('Run') {
            docker.image("localhost:5000/samplespringboot:${env.version}").run('-p 2222:2222 -h samplespringboot --name samplespringboot --link discovery')
        }
 
        stage ('Final') {
            build job: 'samplespringboot-pipeline', wait: false
        }      
 
    }
 
}