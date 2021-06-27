pipeline{
agent any  // any === meanas execute it in  master 
  /* agent{
  label 'anyother destination server'
  if you want to execute in any ohter server then we use label and mention the place where to execute
  */
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
