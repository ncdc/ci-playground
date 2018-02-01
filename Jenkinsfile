pipeline {
  agent any

  options {
    skipDefaultCheckout true
  }

  stages {
    stage('build') {
      steps {
        dir('abc') {
          checkout scm
        }
        dir('def') {
          git url:'https://github.com/ncdc/etcdstats'
        }
      }
    }
  }
  post {
    deleteDir()
  }
}

//
// vim: ft=groovy
//
