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

      stage('Docker login & Push') {
    steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
            sh '''
                echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                docker push vijayadarshini/calender
            '''
        }
    }
}

              }
}
