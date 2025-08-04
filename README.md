# ⚙️ Django Script Automation

## 📌 Overview
This project automates the setup of a modular Django backend using a Bash script (`setup.sh`). It’s ideal for developers looking to quickly initialize Django with structured apps for image processing, text analytics, and API orchestration.

---

## 🚀 Features

- 🔧 Automatic creation of virtual environment
- 📦 Installs Django and dependencies
- 🏗 Initializes Django project and modular apps
- 🔄 Runs initial migrations and starts dev server
- 🔐 Optional `.env` integration and Git init

---

## 🛠️ Setup Instructions

### 1️⃣ Make Script Executable

```bash
chmod +x setup.sh

---
Run the script
- ./setup.sh
- This will create a virtual environment, install Django, initialize your apps, and launch the server at http://127.0.0.1:8000


 ✏ Customization
You can modify setup.sh to:
- Add/remove apps
- Install extra packages
- Preconfigure .env and superuser
- Initialize a Git repo and commit baseline

✅ Final check
- Run the server manually to verify setup:
- python manage.py runserver


