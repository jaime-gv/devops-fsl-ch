pipeline {
  //agent any

  agent {
      docker {
        image 'python:3'
        label 'my-build-agent'
      }
    }
    
  tools {nodejs "nodejs"}
    
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
             
    stage('Linter') {
      steps {
        sh 'npm run lint'
      }
    }

    stage('Formatter') {
      steps {
        sh 'npm run prettier'
      }
    }
    
     stage('Test') {
      steps {
        sh 'npm run test'
      }
    }
    
     stage('Build') {
      steps {
        sh 'npm run build'
      }
    }
     
  }
}
