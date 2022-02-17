pipeline {
  agent any
    
  tools {nodejs "node"}
  stages {
        
    stage('Git') {
      steps {
        git branch: 'dev-ch', url: 'https://github.com/jaime-gv/devops-fsl-ch.git'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t devopsfsl . '
      }  
   }
   stage('Docker Push') {
      agent any
      steps {
          sh 'docker push devopsfsl'
        }
      }
    }

 }
}
