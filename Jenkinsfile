pipeline {
agent any

 tools{
 jdk17 "Java_home"
 maven "Maven"
 git "Git"
 docker "Docker"
}

stages{
 stage('Git checkout'){
  steps {
   git url: "https://github.com/Vijaya150/java-spring-calendar.git "
}
}

stage('Build with maven'){
steps {
 sh 'mvn clean install'
}
}
}
}
 
