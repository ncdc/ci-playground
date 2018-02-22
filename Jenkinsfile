pipeline {
  agent any

  parameters {
		booleanParam(name: 'SKIP_UNIT_TESTS', defaultValue: false, description: 'Skip unit tests - should only be used for debugging Jenkins')
		booleanParam(name: 'SKIP_COMMAND_TESTS', defaultValue: false, description: 'Skip command tests - should only be used for debugging Jenkins')
		booleanParam(name: 'SKIP_INTEGRATION_TESTS', defaultValue: false, description: 'Skip integration tests - should only be used for debugging Jenkins')
		booleanParam(name: 'SKIP_E2E_TESTS', defaultValue: false, description: 'Skip end to end tests - should only be used for debugging Jenkins')
		string(name: 'E2E_FOCUS', defaultValue: 'Conformance', description: 'E2E focus')
	}

  stages {
    stage('build') {
      environment {
        SKIP_UNIT_TESTS = "${params.SKIP_UNIT_TESTS}"
        SKIP_COMMAND_TESTS = "${params.SKIP_COMMAND_TESTS}"
        SKIP_INTEGRATION_TESTS = "${params.SKIP_INTEGRATION_TESTS}"
        SKIP_E2E_TESTS = "${params.SKIP_E2E_TESTS}"
        E2E_FOCUS = "${params.E2E_FOCUS}"
      }

      steps {
        sh 'echo hi'
        sh 'env | sort'
      }
    }
  }
}

//
// vim: ft=groovy
//
