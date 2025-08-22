# 📝 Notes App (Django + Docker + Nginx + MySQL)

This is a containerized **Notes Application** built with **Django** and served with **Nginx**.  
I have added **Docker support** to run the app in isolated containers and configured it with **MySQL (running as a Docker container)**.

---

## 🚀 Features
- Django-based Notes app
- Nginx as reverse proxy
- MySQL database running in a Docker container
- Fully containerized using Docker & Docker Compose

---

## 🛠️ Tech Stack
- **Backend**: Django
- **Web Server**: Nginx
- **Database**: MySQL (Dockerized)
- **Containerization**: Docker, Docker Compose

---

## ⚙️ Setup & Installation

### 1️⃣ Clone the repository
```bash
git clone https://github.com/arpanmondal06/Notes-app.git

```

### 2️⃣ Configure environment variables
- Copy .env.example to .env and update values if needed:
```bash
cp .env.example .env

```

### 3️⃣ Build and run containers
```bash
docker-compose up --build

```

### 4️⃣ Access the app
- **Django app:** http://localhost:8000

- **Admin panel:** http://localhost:8000/admin