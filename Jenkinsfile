pipeline {
  agent any

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
}

//
// vim: ft=groovy
//
