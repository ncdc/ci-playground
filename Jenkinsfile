pipeline {
  agent any

  options {
    skipDefaultCheckout true
  }

  stages {
    stage('clean') {
      steps {
        deleteDir()
      }
    }
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
}

//
// vim: ft=groovy
//
