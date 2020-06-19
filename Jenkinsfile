pipeline {
        agent { dockerfile true }
    stages {
        stage('Staging') {
        agent none
        steps {
        input(message: 'Deploy to Stage', ok: "Hell yeah!, let's do it!")
  }
}
        stage('Testing') {
            steps {
              sh "/Laith/nginx/nginx -V"
            }
        }
    }
  }
