pipeline {
agent any

 tools{
 jdk17 "java_home"
 maven "maven"
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
 
