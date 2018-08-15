node {
  stage('foo') {
    checkout scm

    def files = findFiles(glob: '**/*.groovy')
    echo """
      name: ${files[0].name}
      path: ${files[0].path}
      dir: ${files[0].directory}
      len: ${files[0].length}
      mod: ${files[0].lastModified}
      """

    def andy = load('lib.groovy')
    andy.abc()
  }
}
