pipeline {
  agent any

  parameters {
    string(name: 'GCP_PROJECT')
    string(name: 'GCP_BUCKET')
    string(name: 'GCP_BUCKET_PREFIX')
  }

  stages {
    stage('build') {
      steps {
        withCredentials([file(credentialsId: 'gcs-admin', variable: 'GCP_AUTH')]) {
          sh 'env | sort'
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
