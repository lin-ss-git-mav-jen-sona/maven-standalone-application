pipeline{
  agent any  // any === meanas execute it in  master 
  tools{
	maven 'maven 3.8.1'
	}
  stages{
    stage('checkpout scm'){
      steps{
        git credentialsId: 'd1d0995e-ad8e-4d61-8f4e-ebd8322ff24e', url: 'https://github.com/lin-ss-git-mav-jen-sona/maven-standalone-application.git'
      }  
    }
     stage('build'){
      steps{
        sh "mvn clean package"
	stach includes: 'target/*.jar', name 'aa'
      }
       post{
	       sucess{
		       echo'build is sucess'
	       }
	       failure{
		       echo 'buils is failed'
	       }
       }
     }
  }
}
