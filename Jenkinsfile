pipeline {
  agent any
  
  environment {
        //once you sign up for Docker hub, use that user_id here
        registry = "jimmygv2/nodeapp"
        dockerImage = ''
        registryCredential = 'dockerhub_id'
    }
  
  stages {
        
    stage('Checkout') {
      steps {
        git branch: 'dev-ch', url: 'https://github.com/jaime-gv/devops-fsl-ch.git'
      }
    }
    
     // Building Docker images
    stage('Build Image NPM install LINT-PRETTIER-TEST') {
      steps{
        script {
          dockerImage = docker.build registry
        }
      }
    }
    
    // Uploading Docker images into Docker Hub
    stage('Upload Image DockerHub!') {
     steps{    
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
            }
        }
      }
    }
    
  }
}