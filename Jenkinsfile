pipeline {
    agent any

    tools {
        jdk 'Java_home'         // Name of JDK configured in "Global Tool Configuration"
        maven 'Maven'           // Name of Maven configured in "Global Tool Configuration"
        dockerTool 'Docker'  // Use this only if you configured Docker in Jenkins
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Vijaya150/java-spring-calendar.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t vijayadarshini/calender .'
            }
        }

      stage('Docker login') {
          steps{
              withCredentials([usernamePassword(credentialsId: 'docker-login', passwordVariable: 'docker-password', usernameVariable: 'docker-username')]) {
                  sh '''
                   echo $docker_password | docker login -u $docker_username --password-stdin
                    docker push vijayadarshini/calender
                    sh '''
              }
          }
      }
    }
}
