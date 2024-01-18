pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                script {
                    // Clone the Git repository
                    git 'https://github.com/saitheja007/weatherapp.git'
                }
            }
        }
        /*stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    bat "docker build -t saitheja12/weather-automation ."
                }
            }
        }
        stage('Create Docker Container') {
            steps {
                script {
                    // Create and run Docker container
                    bat "docker run -d --name weatherautomationcontainer -p 8000:8000 saitheja12/weather-automation"
                }
            }
        }
        stage('Push Docker Image to Docker Hub') {
            steps {
                script {
                    // Log in to Docker Hub using Jenkins credentials
                    withCredentials([usernamePassword(credentialsId: 'docker-cred', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                        bat "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"

                        // Push the Docker image to Docker Hub repository
                        bat 'docker push saitheja12/weather-automation'
                    }
                }
            }
        }
        stage('Download Minikube for Windows') {
            steps {
                script {
                    // Download Minikube
                    bat 'curl -Lo minikube.exe https://storage.googleapis.com/minikube/releases/latest/minikube-windows-amd64.exe'
                }
            }
        }
        stage('Install Minikube') {
            steps {
                script {
                    // Move Minikube and update PATH
                    bat 'move minikube.exe C:\\Users\\12687\\.jenkins\\workspace\\Weather-Automation && setx PATH "%PATH%;C:\\minikube"'
                }
            }
        }*/
        stage('Start Minikube') {
            steps {
                script {
                    // Define Minikube installation path (update as needed)
                    def minikubePath = 'C:\\Users\\12687\\.jenkins\\workspace\\Weather-Automation\\minikube.exe'

                    // Start Minikube
                    bat "${minikubePath} start --driver=docker"
                }
            }
        }
        /*stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Apply Kubernetes deployment
                    bat "kubectl apply -f deployment.yml"
                    bat "kubectl get deployment"
                }
            }
        }
        stage('Create NodePort Service') {
            steps {
                script {
                    // Apply Kubernetes service
                    bat "kubectl apply -f service.yml"
                    bat "kubectl get svc"
                }
            }
        }
        stage('Expose NodePort 8000') {
            steps {
                script {
                    // Expose NodePort for the deployment
                    bat "kubectl expose deployment weather-app-deployment --type=NodePort --port=8000"
                }
            }
        }*/
        stage('Get URL and play with Application') {
            steps {
                script {
                    // Get the URL for the Minikube service
                    bat "minikube service weather-automation-service --url"
                }
            }
        }
    }
}
