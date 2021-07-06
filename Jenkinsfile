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
	stash includes: 'target/*.jar', name: 'aa'
      }
       post{
	       success{
		       echo'build is sucess'
	       }
	       failure{
		       echo 'buils is failed'
	       }
       }
     }
	/* stage('deploy'){
		steps{
	 	 sshagent(['624215ff-a4fc-438d-940e-6b1cab67c6ab']) {
	 	 sh "scp -o StrictHostKeyChecking=no target/maven-stanalone-application-0.0.1-SNAPSHOT.jar centos@3.236.45.157:/home/centos/axisservice" 
		 b
		 sh '''cd /home/centos/axisservice
			chmod -R 755 *.jar
		    '''
		  }
		 }  */
	 }	  
  }
}
