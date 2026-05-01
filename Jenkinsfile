pipeline {
	agent any
	environment {
		IMAGE = "vaishru/jenkinsq1"
		TAG = "v1"
	}

	stages {
		stage('Clone') {
			steps {

				git 'https://github.com/kurhadevaishnavi50-hue/jenkinsq1.git'

				}
			}


		stage('Deploy to K8s') {
			steps {
				sh '/usr/local/bin/kubectl apply -f Deployment.yaml'
				sh '/usr/local/bin/kubectl apply -f service.yaml'
			}
		}




		
	}
}


