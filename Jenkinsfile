pipeline{
agent any  // any === meanas execute it in  master 
  stages{
    stage('checkpout scm'){
      steps{
        git credentialsId: 'd1d0995e-ad8e-4d61-8f4e-ebd8322ff24e', url: 'https://github.com/lin-ss-git-mav-jen-sona/maven-standalone-application.git'
      }  
    }
     stage('build'){
      steps{
        sh "mvn clean package"
      }
    }
  }
}
