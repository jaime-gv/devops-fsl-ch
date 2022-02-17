pipeline {
  agent any
    
  tools {nodejs "nodejs"}
  stages {
        
    stage('Git') {
      steps {
        git branch: 'dev-ch', url: 'https://github.com/jaime-gv/devops-fsl-ch.git'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t devopsfsl .'
      }  
  }
}

