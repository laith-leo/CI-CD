
pipeline {
        agent {
        docker { image 'centos:7' }
    }
    stages {
        stage('Build') {
            steps {
              sh "docker build ."
            }
        }
    }
}
