pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning Git repository...'
                // If this Jenkins job is connected to a Git repo, use:
                checkout scm

                // OR if you want to hardcode the repo:
                // git url: 'https://github.com/yourusername/your-repo.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "No tests implemented yet!"'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t my-node-app .'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying with Docker Compose...'
                sh 'docker-compose up -d'
            }
        }
    }
}
