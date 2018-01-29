pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        //withCredentials([file(credentialsId: 'gcs-admin', variable: 'GCP_AUTH')]) {
          pwd
          ls -l
          sh 'make'
        //}
      }
    }
  }
  post {
    always {
      deleteDir()
    }
  }
}
