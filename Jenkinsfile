pipeline {
  agent any

  stages {
    stage('build') {
      steps {
        sh 'go test -v 2>&1 | go-junit-report > junit.xml'
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
