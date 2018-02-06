/*
*/

//@Library('andy-jenkins-library') _

pipeline {
  agent any

  stages {
    stage('build') {
      steps {
        script {
          v=sh(script: 'git describe --tags --always', returnStdout: true)
        }

        sh "echo 'v=${v}'"

        script {
          andyRetry(3, 'echo ${i}; exit 1')
        }
      }
    }
  }
}

void andyRetry(retry, cmd) {
  def rc=0

  for(int i = 1; i <= retry; i++) {
    rc = sh(script: cmd, returnStatus: true)
    if(rc == 0) {
      break
    }
    echo "Attempt ${i} of ${retry} failed. Retrying"
  }

  if(rc != 0) {
    currentBuild.result = 'FAILED'
  }
}

//
// vim: ft=groovy
//
