pipeline {
agent any

 tools{
 jdk17= "java_home"
 maven= "maven"
}

stages{
 stage('Git checkout'){
  steps {
   git url: " "
}
}

stage('Build with maven'){
steps {
 sh 'mvn clean install'
}
}
}
}
 
