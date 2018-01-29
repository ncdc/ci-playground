pipeline {
  agent any

  parameters {
    string(name: 'GCP_PROJECT')
    string(name: 'GCP_BUCKET')
    string(name: 'GCP_BUCKET_PREFIX')
  }

  /*
  environment {
    GCP_PROJECT = "${params.GCP_PROJECT}"
    GCP_BUCKET = "${params.GCP_BUCKET}"
  }
  */

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
