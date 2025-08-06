# katomaran_hackthon
# Todo Task Manager 📱

A cross-platform Todo Task Management mobile application built with **Flutter** and powered by a **Java Spring Boot backend**. It allows users to log in with Google and manage their personal tasks effectively with full CRUD capabilities, offline support, and a clean, responsive UI.

---

## 🚀 Features

- 🔐 Google Sign-In Authentication via Firebase
- 📝 Full task CRUD (Create, Read, Update, Delete)
- 🗓️ Task fields: Title, Description, Due Date, Status (Open/Complete)
- ✅ Mark tasks as complete/incomplete
- 🔍 Task filtering, search, and tabs
- 💾 Offline task storage using Hive DB
- 🧽 Empty state views
- ✨ Smooth animations (insertion, deletion)
- 📱 Beautiful, responsive UI (Android + iOS)
- 🐛 Crash reporting via Firebase Crashlytics
- 🔄 Pull to refresh, swipe to delete

---

## 🛠️ Tech Stack

| Component         | Technology Used              |
|------------------|------------------------------|
| Mobile App       | Flutter                      |
| Backend          | Java (Spring Boot REST API)  |
| Local Storage    | Hive DB                      |
| Authentication   | Google (via Firebase Auth)   |
| Crash Reporting  | Firebase Crashlytics         |
| State Management | Provider                     |
| DB (backend)     | H2 (in-memory) / MySQL (optional) |

---

## 📸 Screenshots

*(Include screenshots of login, task list, add task, etc.)*

---

## 📲 APK Download

[Click here to download the APK](https://example.com/download/todo-task-app.apk)  
*(Replace with actual link after building `flutter build apk`)*

---

## 🧠 Assumptions

- Only **Google login** is implemented for authentication.
- Offline-first architecture with **Hive**, backend used optionally for cloud sync.
- No backend user auth; assumed that tasks are synced manually in future versions.
- Backend does not require login; it's public for demo purposes.
- No push notifications or reminders implemented (out of scope for hackathon).
- App supports only mobile platforms (not web or desktop).

---

## 🧱 Architecture Diagram

![Architecture Diagram](<img width="1024" height="1024" alt="Architecture diagram" src="https://github.com/user-attachments/assets/d74f3ec8-5d03-409f-9600-a109193b4618" />
)  
*(Add actual image showing: Flutter UI ↔ Hive DB, and Flutter UI ↔ REST API)*

---

## 🧪 How to Run (Mobile App)

1. Clone this repo:
   ```bash
   git clone https://github.com/your-username/todo-hackathon.git
   cd todo-hackathon
