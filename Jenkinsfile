pipeline {
  agent any
  stages {
    stage('') {
      steps {
        googleStorageUpload(credentialsId: 'andy-heptio', bucket: 'ecstatic-ridge-4406', pattern: '**/*.upload', pathPrefix: '/ci-playground')
      }
    }
  }
}
