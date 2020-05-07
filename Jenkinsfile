pipeline {
    agent any
    tools {
        maven "Maven 3.6.3"
    }
    options {
        parallelsAlwaysFailFast()
    }
     environment {
        NEXUS_ARTIFACT_VERSION= "${env.BUILD_NUMBER}"
    }
    stages {
        stage('Non-Parallel Stage') {
            steps {
                echo 'This stage will be executed first.'
            }
        }
        stage('Parallel Stage') {
            parallel {
                   stage('Checkstyle') {
                        steps{
                            // Run the maven build with checkstyle
                            sh "mvn -e clean package checkstyle:checkstyle"
                         }
                     }
                    stage('Sonarqube') {
                        steps {
                            withSonarQubeEnv('SonarQube') {
                            sh "mvn -e clean package sonar:sonar -Dsonar.host_url=$SONAR_HOST_URL "

                            }
                         }
                    }
            }
        }

        stage('jmeter') {
                    steps {
                      sh "jmeter -Jjmeter.save.saveservice.output_format=xml -Jjmeter.save.saveservice.response_data.on_error=true -n -t tests/trivial/test_petclinic.jmx  -l testresult.jlt"
                    }
                }

    }
}
