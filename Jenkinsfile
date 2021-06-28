pipeline {
  agent any 
  environment {
    AUTHOR= 'ravi'
    EMAIL= 'abc123@email.com'
    NEW_VERSION= '1.2.3'
  }
     stages {
       stage ('build') {
             steps {
         echo 'build stage' 
         echo "the author of the file is ${AUTHOR} "
}
    }

   stage ('test') {
     when {
       expression{
         NEW_VERSION=='1.2.0'
       }
     }
     steps {
         echo 'test stage' 
}
   }

stage ('run') {
      steps {
        echo 'run stage' 
        echo " run by which email: ${EMAIL} "
}
}
}
}

         
