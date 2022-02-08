pipeline {
  agent any
    
  tools {nodejs "nodejs"}
    
  stages {
        
    stage('Git') {
      steps {
        git git branch: 'dev-ch', credentialsId: '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', url: 'https://github.com/jaime-gv/devops-fsl-ch.git'
      }
    }
     
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }  
    
            
    stage('Test') {
      steps {
        sh 'node test'
      }
    }
  }
}