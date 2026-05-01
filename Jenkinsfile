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
		stage('Docker Build') {
			steps {
				sh 'docker build -t $IMAGE:$TAG .'
			}
		}
		stage('Docker Login & Push') {
			steps {
				withCredentials([usernamePassword(
					credentialsId: 'docker-creds',
					usernameVariable: 'USER',
					passwordVariable: 'PASS'

					passwordVariable: 'PASS'
					)]) {
						sh 'echo $PASS | docker login -u $USER --password-stdin'
						sh 'docker push $IMAGE:$TAG'
					}
				}
		}
	}
}


