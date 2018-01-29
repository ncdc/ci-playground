pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        withCredentials([file(credentialsId: 'gcs-admin', variable: 'GCP_AUTH')]) {
          sh 'make'
        }
      }
    }
  }
  /*
  post {
    always {
      deleteDir()
    }
  }
  */
}
