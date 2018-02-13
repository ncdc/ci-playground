pipeline {
  agent any

  stages {
    stage('build') {
      steps {
        sh 'echo hi'
      }
    }
  }

  post {
    always {
      junit '**/junit*.xml'
    }
  }
}

//
// vim: ft=groovy
//
