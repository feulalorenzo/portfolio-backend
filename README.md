# ⚙️ Personal Portfolio - Backend & API

A lightweight, custom REST API built in PHP and MySQL to power my personal portfolio. It serves project data to the web frontend and handles database operations for an upcoming mobile management app.

---

## 🏗️ Architecture Overview

- **Database:** MySQL (hosted on InfinityFree)
- **API Layer:** Pure PHP (`mysqli`) returning JSON responses with CORS enabled.
- **Clients:** 
  1. Web Frontend (Read-only `GET` requests)
  2. Mobile Companion App (Create/Update/Delete operations via `POST` requests)

---

## 🔌 API Endpoints

| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/api/get_projects.php` | Retrieves all portfolio projects ordered by creation/priority. |
| `POST` | `/api/add_project.php` | *(In development)* Adds a new project to the database from the mobile app. |

---

## 🗄️ Database Setup

1. Create a MySQL database on your hosting provider.
2. Create the main table (example structure):

```sql
CREATE TABLE progetti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image_url VARCHAR(255),
    github_url VARCHAR(255),
    live_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

## ⚙️ Configuration & Deployment

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/your-backend-repo.git
   ```

2. **Configure Database Credentials:**
   Open `db_connect.php` (or your connection file) and update the credentials with your hosting details:
   ```php
   $host = "your_mysql_hostname";
   $user = "your_mysql_username";
   $pass = "your_mysql_password";
   $db   = "your_database_name";
   ```

3. **Deploy:**
   Upload the PHP files into the `htdocs/api/` directory on your server via FTP or File Manager.

---

## 🔮 Future Improvements

- [ ] Complete CRUD endpoints (`UPDATE` and `DELETE`) for the mobile app.
- [ ] Add token-based authentication (`Bearer Token`) to secure write endpoints.
- [ ] Implement image upload handling directly from mobile.