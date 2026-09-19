# Laravel User Management System

โปรเจกต์นี้เป็นระบบจัดการผู้ใช้งานที่พัฒนาด้วย Laravel Framework  
สำหรับใช้ในการทดสอบและพัฒนาระบบบนเครื่อง Local

## Features

- Login / Logout
- Authentication
- Dashboard
- User Management
- Create User
- Edit User
- Delete User
- Update Profile
- Validation Form
- Password Hashing
- Session / Middleware
- MySQL Database

## Requirements

- PHP 8.2 หรือสูงกว่า
- Composer
- MySQL / MariaDB
- Laravel
- XAMPP หรือ Web Server ที่รองรับ PHP

## Installation

### 1. Clone Project

```bash
git clone https://github.com/MiniTheRippers/UserManage.git
```

เข้า path project 
```bash
cd UserManage
```

### 2. composer install

```bash
composer install
```

### 3. Configure Environmen

สร้างไฟล์ .env จาก .env.example

windows 

```bash
copy .env.example .env
```
linux/mac

```bash
cp .env.example .env
```
จากนั้นสร้าง Application Key

```bash
php artisan key:generate
```

### 4. Add User

เปิด Laravel Tinker

```bash
php artisan tinker
```

สร้าง User สำหรับ Login

```bash
\App\Models\User::create([
    'name' => 'admin',
    'email' => 'admin@gmail.com',
    'password' => bcrypt('1234'),
]);
```
บัญชีสำหรับเข้าสู่ระบบ

Email: admin@gmail.com
Password: 1234

### 5. Run Project

รัน Laravel Development Server

```bash
php artisan serv
```

จากนั้นเปิด Browser

http://127.0.0.1:8000

ใช้ Account ที่สร้างไว้สำหรับเข้าสู่ระบบ

Email: admin@gmail.com
Password: 1234
