📘 DevOps Exam App – Dockerized Full Stack Project
A fully Dockerized Full Stack Application designed to simulate a DevOps exam environment.
🔧 Tech Stack
Layer	Technology
Backend	🐍 Flask (Python)
Frontend	🖥 HTML, CSS, JS
Database	🐬 MySQL 5.7
DevOps	🐳 Docker, Docker Compose
OS	🐧 Ubuntu 20.04+

📁 Project Structure
bash
Copy
Edit
Devops-Exam-App/
├── backend/              # Flask App
│   ├── app.py
│   ├── questions.py
│   ├── templates/
│   ├── static/
│   ├── requirements.txt
│   └── dockerfile
├── frontend/             # HTML + Optional NGINX
│   ├── index.html
│   ├── exam.html
│   ├── result.html
│   └── nginx.conf
├── db/
│   └── init.sql          # MySQL DB + Table + User Setup
├── .env                  # Environment Variables
├── docker-compose.yml    # Compose Configuration
└── README.md             # You're reading this 😎
🚀 Setup Instructions
✅ 1. Prerequisites
Install Docker and Docker Compose:

bash
Copy
Edit
sudo apt update
sudo apt install -y docker.io docker-compose
Start and enable Docker:

bash
Copy
Edit
sudo systemctl enable docker
sudo systemctl start docker
Check installation:

bash
Copy
Edit
docker --version
docker-compose --version
📂 2. Clone the Repository
bash
Copy
Edit
git clone https://github.com/<your-username>/Devops-Exam-App.git
cd Devops-Exam-App
🔐 3. Create .env File
At the project root, create a .env file:

env
Copy
Edit
PORT=5000
DB_HOST=exam-mysql
DB_USER=exam_user
DB_PASSWORD=exam_pass
DB_NAME=devops_exam
🐬 4. MySQL Auto-Setup
The file db/init.sql will:

Create devops_exam database

Create results table

Create user exam_user with password exam_pass

Grant necessary privileges

ℹ️ No manual DB setup needed — handled by Docker Compose

🐳 5. Build & Run the App
bash
Copy
Edit
docker-compose up --build
This will:

Start MySQL (mysql_db) on port 3306

Start Flask (flask_app) on port 5000

🌐 6. Access the Application
Open your browser and go to:

cpp
Copy
Edit
http://<your-ec2-public-ip>:5000/
🔍 7. (Optional) Verify MySQL Setup
bash
Copy
Edit
docker exec -it mysql_db /bin/bash
mysql -u root -p
Then run:

sql
Copy
Edit
SHOW DATABASES;
USE devops_exam;
SHOW TABLES;
SELECT * FROM results;
⛔ 8. Stop the App
bash
Copy
Edit
docker-compose down
💡 Tips & Tricks
To rebuild containers cleanly:

bash
Copy
Edit
docker-compose down -v
docker-compose up --build
If init.sql is modified, remove the existing volume:

bash
Copy
Edit
docker volume rm devops-exam-app_db_data
🙌 Author
Built with ❤️ by Vedant Tambe
