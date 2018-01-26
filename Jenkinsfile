pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'make'
        googleStorageUpload(credentialsId: 'andy-heptio', bucket: 'gs://ecstatic-ridge-4406', pattern: '**/*.upload', pathPrefix: '/ci-playground')
      }
    }
  }
}
