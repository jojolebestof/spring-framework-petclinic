pipeline {
    agent any
    stages {
        stage('Example') {
           steps{
              // Run the maven build
              echo ' Hello world'
           }
        }
    }
   post {
      always {
        echo ' toujours hello'
      }
     }
}
