pipeline {
        agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
              sh "/Laith/nginx/nginx -V"
            }
        }

    stage('Release') {
      step {
    archiveArtifacts artifacts: '**', fingerprint: true
        }
    }
    }
}








