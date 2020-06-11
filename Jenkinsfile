
pipeline {
        agent {
        docker { dockerfile true }
    }
    stages {
        stage('Test') {
            steps {
              sh "/Laith/nginx/nginx -V"
            }
        }
    }
}
