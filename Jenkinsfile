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
        withCredentials([string(credentialsId: 'docker-login-creds', passwordVariable: 'Jimmy.2022', usernameVariable: 'jimmygv2')]) {
          sh '''
                            echo "${password} | docker login -u ${username} --password-stdin"
                         '''
          //sh 'docker login -u jimmygv2 -p ${dockerhubpwd}'
          sh 'docker push devopsfsl'
        }
      }
    }

 }
}
