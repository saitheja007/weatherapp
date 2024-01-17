pipeline {
    agent any

    stages {
        stage('Git checkout') {
            steps {
                git 'https://github.com/saitheja007/weatherapp.git'
            }
        }
        /*stage('Build Image') {
            steps {
                script {
                    bat "docker build -t saitheja12/weather-automation1 ."
                }
            }
        }
        stage('Create Container') {
            steps {
                script {
                    bat "docker run -d --name weatherautomationcontainer1 -p 8000:8000  saitheja12/weather-automation1"
                }
            }
        }
        stage('Push Images to Docker Hub') {

            steps {

                script {

                    // Log in to Docker Hub using Jenkins credentials

                    withCredentials([usernamePassword(credentialsId: 'docker-cred', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {

                        bat "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"

 

                        // Push the Docker images to your Docker Hub repository
                     
                        bat 'docker push saitheja12/weather-automation1'

                    }

                }

            }
        }
        stage('Download Minikube for Windows') {
            steps {
                bat 'curl -Lo minikube.exe https://storage.googleapis.com/minikube/releases/latest/minikube-windows-amd64.exe'
            }
        }
        stage('Install Minikube') {
            steps {
                bat 'move minikube.exe C:\\Users\\12687\\.jenkins\\workspace\\Weather-Automation'
                bat 'setx PATH "%PATH%;C:\\minikube"'
            }
        }*/
        stage('Start Minikube') {
            steps {
                script {
                    // Define Minikube installation path (update as needed)
                    def minikubePath = 'C:\\Users\\12687\\minikube.exe'

 

                    // Start Minikube
                    bat "cd C:\\Users\\12687\\.jenkins\\workspace\\weather-Automation && ${minikubePath} start --driver=docker"
                }
            }
        }
        /*stage('Deploy to Kubernetes') {
            steps {
                script {
                    bat "kubectl apply -f deployment.yml"
                    bat "kubectl get deployment"
                }
            }
        }
        stage('Create NodePort Service') {
            steps {
                script {
                    bat "kubectl apply -f service.yml"
                    bat "kubectl get svc"
                }
            }
        }
        stage('Expose NodePort 8000') {
            steps {
                script {
                    bat "kubectl expose deployment weatherdeployment1 --type=NodePort --port=8000"
                }
            }
        }*/
        stage('Get URL and play with Application') {
            steps {
                script {
                    bat "minikube service weatherservice1"
                }
            }
        }
    }
}
