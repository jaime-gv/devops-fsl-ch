pipeline {
  agent {
        docker {
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
     environment {
            CI = 'true'
        }
    
  stages {
        
    stage('Git') {
      steps {
        git branch: 'dev-ch', url: 'https://github.com/jaime-gv/devops-fsl-ch.git'
      }
    }
     
    stage('Install') {
      steps {
        sh 'npm install --force'
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
