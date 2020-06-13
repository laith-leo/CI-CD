pipeline {
        agent { dockerfile true }
    stages {
        stage('Confirm Deploy to Staging') {
        agent none
        steps {
        input(message: 'Deploy to Stage', ok: "Yes, let's do it!")
  }
}
        stage('Test') {
            steps {
              sh "/Laith/nginx/nginx -V"
            }
        }
    }
  }
