```markdown
# 📘 DevOps Exam App – Dockerized Full Stack Project

A fully Dockerized Full Stack Application designed to simulate a DevOps exam environment.

---

## 🔧 Tech Stack

| Layer     | Technology              |
|-----------|--------------------------|
| Backend   | 🐍 Flask (Python)        |
| Frontend  | 🖥 HTML, CSS, JS         |
| Database  | 🐬 MySQL 5.7             |
| DevOps    | 🐳 Docker, Docker Compose |
| OS        | 🐧 Ubuntu 20.04+         |

---

## 📁 Project Structure

```

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

````

---

## 🚀 Setup Instructions

### ✅ 1. Install Docker and Docker Compose

```bash
sudo apt update
sudo apt install -y docker.io docker-compose
````

Enable and start Docker:

```bash
sudo systemctl enable docker
sudo systemctl start docker
```

Verify installation:

```bash
docker --version
docker-compose --version
```

---

### 📥 2. Clone the Repository

```bash
git clone https://github.com/your-username/Devops-Exam-App.git
cd Devops-Exam-App
```

---

### 🔐 3. Create `.env` File

Create a file named `.env` at the root of the project and add:

```env
PORT=5000
DB_HOST=exam-mysql
DB_USER=exam_user
DB_PASSWORD=exam_pass
DB_NAME=devops_exam
```

---

### 🐬 4. MySQL Auto Setup

The file `db/init.sql` will:

* Create a database `devops_exam`
* Create a table `results`
* Create user `exam_user` with password `exam_pass`
* Grant all privileges

⚠️ No need to do this manually — handled by Docker Compose.

---

### 🐳 5. Build & Run the App

```bash
docker-compose up --build
```

This will:

* Start MySQL container on port 3306
* Start Flask app on port 5000
* Load environment variables from `.env`

---

### 🌐 6. Access the Application

Open browser and visit:

```
http://<your-ec2-public-ip>:5000/
```

---

### 🧪 7. Optional: Access MySQL

```bash
docker exec -it mysql_db /bin/bash
mysql -u root -p
```

Then run:

```sql
SHOW DATABASES;
USE devops_exam;
SHOW TABLES;
SELECT * FROM results;
```

---

### ⛔ 8. Stop the Application

```bash
docker-compose down
```

---

## 💡 Tips

If you update the `init.sql`, run:

```bash
docker volume rm devops-exam-app_db_data
docker-compose up --build
```

---

## 🙌 Author

Built with ❤️ by **Vedant Tambe**


