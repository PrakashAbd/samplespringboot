node {
 
    withMaven(maven:'maven') {
 
        stage('Build') {
            sh 'mvn clean install'
        }
 
        stage('Image') {
            dir ('samplespringboot') {
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