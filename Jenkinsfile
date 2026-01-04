pipeline {
  agent any


  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }



    stage('Terraform init') {
      steps {
        sh 'terraform init'
      }
    }


    stage('Terraform Apply') {
      steps {
        withCrendentials([[$class: 'AmazonWebServicesCredentialsBinding', credentgialsId: 'aws-terraform']]){
          sh 'terraform apply -auto-approve'
        }
      }
    }

}

}
