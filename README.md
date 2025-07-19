📘 DevOps Exam App – Dockerized Full Stack Project
This is a Dockerized Full Stack DevOps Exam App built using:

🐍 Flask (Backend)

🖥 HTML + JS (Frontend)

🐬 MySQL 5.7 (Database)

🐳 Docker + Docker Compose

📦 Folder Structure
bash
Copy
Edit
Devops-Exam-App/
├── backend/               # Flask app
│   ├── app.py
│   ├── questions.py
│   ├── templates/
│   ├── static/
│   ├── requirements.txt
│   └── dockerfile
├── frontend/              # HTML Files + NGINX Config (optional)
│   ├── index.html
│   ├── exam.html
│   ├── result.html
│   └── nginx.conf
├── db/
│   └── init.sql           # MySQL database + table + user setup
├── .env                   # Environment Variables
├── docker-compose.yml     # Compose file
└── README.md              # You're reading this 😎
🚀 Step-by-Step Setup
✅ 1. Prerequisites
Make sure you have the following installed on your Ubuntu machine:

bash
Copy
Edit
sudo apt update
sudo apt install -y docker.io docker-compose
Enable and start Docker:

bash
Copy
Edit
sudo systemctl enable docker
sudo systemctl start docker
Verify:

bash
Copy
Edit
docker --version
docker-compose --version
📁 2. Clone the Repository
bash
Copy
Edit
git clone https://github.com/yourusername/Devops-Exam-App.git
cd Devops-Exam-App
🔐 3. Configure .env
Create a .env file at the root:

env
Copy
Edit
PORT=5000
DB_HOST=exam-mysql
DB_USER=exam_user
DB_PASSWORD=exam_pass
DB_NAME=devops_exam
🐬 4. Setup MySQL Database
The SQL file db/init.sql will:

Create a database devops_exam

Create a table results

Create user exam_user with password exam_pass

Grant privileges

You don't need to do this manually — it auto-runs via Docker Compose.

🐳 5. Build & Run the App using Docker Compose
bash
Copy
Edit
docker-compose up --build
This will:

Spin up mysql_db container (port 3306)

Spin up flask_app container (port 5000)

Flask will connect to MySQL using values from .env

🔍 6. Access the App
Open in browser:

bash
Copy
Edit
http://<your-ec2-public-ip>:5000/
🧪 7. Verify MySQL Setup (Optional)
To access MySQL inside container:

bash
Copy
Edit
docker exec -it mysql_db /bin/bash
mysql -u root -p
Then:

sql
Copy
Edit
SHOW DATABASES;
USE devops_exam;
SHOW TABLES;
SELECT * FROM results;
✅ 8. Stopping the Containers
bash
Copy
Edit
docker-compose down
💡 Tips
To rebuild containers from scratch:

bash
Copy
Edit
docker-compose down -v
docker-compose up --build
If you modify init.sql, make sure to remove volumes:

bash
Copy
Edit
docker volume rm devops-exam-app_db_data
🛠 Tech Stack
Layer	Tech
Backend	Flask
Frontend	HTML/CSS/JS
Database	MySQL 5.7
DevOps	Docker, Compose
OS	Ubuntu 20.04+

🙌 Credits
Developed by Vedant Tambe 🚀
