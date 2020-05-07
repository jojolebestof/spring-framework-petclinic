pipeline {
    agent any
    stages {
        stage('Example') {
           steps{
              // Run the maven build
              sh ' Hello world'
           }
        }
    }
   post {
      always {
        echo ' toujours hello'
      }
     }
}
