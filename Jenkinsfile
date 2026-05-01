pipeline {
	agent any
	stages {
		stage('Clone') {
			steps {

				git 'https://github.com/kurhadevaishnavi50-hue/jenkinsq1.git'

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
