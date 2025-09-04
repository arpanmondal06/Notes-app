@Library("Shared-lib") _
pipeline {
    agent { label 'vinod'}
    
    stages{
        stage("Code"){
            steps{
                script{
                    git-clone("https://github.com/arpanmondal06/Notes-app.git", "main")
                }
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
