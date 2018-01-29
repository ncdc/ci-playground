pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        //withCredentials([file(credentialsId: 'gcs-admin', variable: 'GCP_AUTH')]) {
          sh 'pwd;ls -l;make'
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
