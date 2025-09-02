pipeline {
    agent { label 'vinod'}
    
    stages{
        stage("Code"){
            steps{
                echo "This is cloning the code"
                git url: "https://github.com/arpanmondal06/Notes-app.git", branch:"main"
                echo "Clonning successfully"
            }
        }
        stage("Build"){
            steps{
                echo "This is building the code"
                sh "whoami"
                sh "docker build -t notes-app:latest ."
            }
        }
        stage("Test"){
            steps{
                echo "This is testing the code"
            }
        }
        stage("Deploy"){
            steps{
                echo "This is deploying the code"
                sh "docker compose down || true"
                sh "docker compose up -d"
                sh "docker ps -a"
            }
        }
    }
}