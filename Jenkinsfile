pipeline {
  agent any 
  environment {
    AUTHOR= 'ravi'
    EMAIL= 'abc123@email.com'
  }
     stages {
       stage ('build') {
             steps {
         echo 'build stage' 
         echo "the author of the file is ${AUTHOR} "
}
    }

   stage ('test') {
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

         
