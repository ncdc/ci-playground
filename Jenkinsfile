pipeline {
  agent any

  stages {
    stage('build') {
      steps {
        script {
          def rc=0
          for(int i = 0; i < 3; i++) {
            if(i < 2) {
              rc = sh(script: 'exit 1', returnStatus: true)
            } else {
              rc = sh(script: 'exit 2', returnStatus: true)
            }
            sh "echo rc=${rc}"
            if(rc == 0) {
              break
            }
          }
          if(rc != 0) {
            currentBuild.result = 'FAILED'
          }
        }
      }
    }
  }
}

//
// vim: ft=groovy
//
