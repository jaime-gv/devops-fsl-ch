pipeline {
  agent any
    
  tools {nodejs "node"}
  stages {
        
    stage('Git') {
      steps {
        git branch: 'dev-ch', url: 'https://github.com/jaime-gv/devops-fsl-ch.git'
      }
    }
     
    stage('Install') {
      steps {
        sh 'npm install'
      }
    }  
     
  }
}
