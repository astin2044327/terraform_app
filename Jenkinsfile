pipeline {
  agent any 
  environment {
    AUTHOR= 'ravi'
    EMAIL= 'abc123@email.com'
    NEW_VERSION= '1.2.3'
  }
  parameters {
    string(name: 'firstLastName', defaultValue: 'ravi dahal' , description: 'this is the name')
    booleanParam(name:'TrueFalse' , defaultValue: true , description: 'this is booleanParam' )
    choice(name: 'Version' , choices:['1.2.0','1.2.2','1.2.3'] , description: 'this is choice param')
  }
     stages {
       stage ('build') {
             steps {
         echo 'build stage' 
         echo "the author of the file is ${AUTHOR} "
               echo " ${params.firstLastName}"
               echo "${params.TrueFalse}"
             }
    }

   stage ('test') {
     when {
       expression{
         NEW_VERSION== params.Version
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

         
