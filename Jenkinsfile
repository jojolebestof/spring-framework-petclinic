pipeline {
    agent any
    tools {
        maven "Maven 3.6.3"
    }
    stages {
        stage('Build') {
           steps{
              // Run the maven build
              sh "mvn clean package"
           }
        }
    }
}
