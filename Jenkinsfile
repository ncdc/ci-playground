pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        withCredentials([file(credentialsId: 'mac-cli-storage-admin-gcp.json', variable: 'GCP_AUTH')]) {
          sh 'make'
        }
      }
    }
  }
}
