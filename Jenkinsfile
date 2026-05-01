pipeline {
	agent any
	stages {
		stage('Clone') {
			steps {

				git 'https://github.com/your-username/java-cicd.git'

			}		
	}	
		stage('Compile') {
			steps {
				sh 'javac Hello.java'
			}
		}		
		stage('Run') {
			steps {
				sh 'java Hello'
			}	
		}
	}
}
