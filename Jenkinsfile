pipeline {
  agent any
  stages {
    stage('') {
      steps {
        googleStorageUpload(credentialsId: 'andy-gcs', bucket: 'ecstatic-ridge-4406', pattern: '**/*.upload', pathPrefix: '/ci-playground')
      }
    }
  }
}