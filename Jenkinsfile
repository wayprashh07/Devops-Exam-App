pipeline {
    agent any
    
    environment {
        COMPOSE_PROJECT_NAME = "exam-app-project"
    }
    stages{
        stage ("git clone"){
            steps{
                echo "code clone zala"
                git url : "https://github.com/VedTambe/Devops-Exam-App.git" , branch : "main"
            }
        }
        stage ("build docker image"){
            steps {
            echo "image tyar zali"
            sh "docker compose build"
            }
        }
        stage ("project start "){
            steps {
                echo "project start zala"
                sh "docker compose up -d"
            }
        }
        stage ("verify container"){
            steps {
                echo "container create zale"
                sh "docker ps"
            }
        }

    }
}
