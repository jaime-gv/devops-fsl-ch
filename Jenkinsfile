pipeline {
  agent any
    
  tools {nodejs "nodejs"}
    
  stages {
        
    stage('Git') {
      steps {
        git 'https://github.com/jaime-gv/devops-fsl-ch.git'
      }
    }
  }
}