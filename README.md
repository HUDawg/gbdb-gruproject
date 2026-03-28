# 📘 GradeBook Database Project (gbdb-gruproject)

The **GradeBook Database Project** is a MySQL-based system designed to manage student records, courses, and grading data. This project was initialized and managed using the MySQL Command Line Interface. The project Grade Book Database was started in mySQL MacOS terminal.

---

## 📦 Requirements

* MySQL Server (v8.0+ recommended)
* Terminal (macOS/Linux) or Command Prompt / PowerShell (Windows)

---

## 💻 Installation & Setup

### 🍎 macOS (Homebrew)

1. Update Homebrew:

```bash
brew update
```

2. Install MySQL:

```bash
brew install mysql
```

3. Start MySQL:

```bash
brew services start mysql
```

4. Verify MySQL is running:

```bash
brew services list
```

5. Optional service controls:

```bash
brew services stop mysql
brew services restart mysql
```

6. Access MySQL CLI:

```bash
mysql -u root -p
```

---

### 🪟 Windows (MySQL Installer)

1. Download and install
   MySQL Installer for Windows

2. During installation:

   * Select **MySQL Server**
   * (Optional) Select **MySQL Workbench**
   * Set a **root password**
   * Keep default port **3306**

3. Open Command Prompt or PowerShell

4. Start MySQL (if not running automatically)

5. Connect to MySQL:

```bash
mysql -u root -p
```

---

## 🗄️ Database Initialization

Once inside the MySQL CLI:

```sql
CREATE DATABASE SchoolDB;
```

```sql
SHOW DATABASES;
```

```sql
USE SchoolDB;
```

---

## 📊 Core MySQL Commands

### 🔎 View Databases & Tables

```sql
SHOW DATABASES;
SHOW TABLES;
SELECT DATABASE();
```

### 🧱 Inspect Table Structure

```sql
SHOW CREATE TABLE Students;
DESCRIBE Students;
EXPLAIN Students;
```

### 📄 Query Data

```sql
SELECT * FROM Students;
```

---

## 🧠 Terminal Commands (macOS/Linux)

```bash
history
```

View previously executed commands

```bash
clear
```

Clear terminal screen

```bash
exit
```

Exit MySQL CLI

---

## 📁 Project Notes

* Default user: `root`
* Default host: `localhost`
* Ensure MySQL service is running before connecting
* Keep credentials secure (do NOT commit passwords to GitHub)

---
