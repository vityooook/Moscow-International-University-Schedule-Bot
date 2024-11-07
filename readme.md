# Moscow International University Schedule Bot

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction

The **Moscow International University Schedule Bot** is a Telegram bot developed to provide students with an easy and convenient way to view their class schedules. Designed specifically for Moscow International University, the bot addresses the challenges students face when accessing their timetables, ensuring seamless and efficient schedule management.

After thorough testing with a large group of students, the bot has proven to be reliable and user-friendly, enhancing the overall academic experience.

## Features

- **View Timetable**: Quickly access your daily, weekly, or monthly class schedules.
- **Notifications**: Receive timely reminders for upcoming classes and changes in the schedule.
- **Personalized Schedule**: Customize the bot to display your specific courses and preferences.
- **Real-time Updates**: Get the latest schedule updates and modifications instantly.
- **User-Friendly Interface**: Intuitive commands and easy navigation make it simple to use.

## Technologies Used

- **Python**: The core programming language used for developing the bot.
- **Aiogram**: A modern and efficient framework for building Telegram bots.
- **SQLAlchemy**: An ORM (Object-Relational Mapping) tool for database management.

## Installation

### Prerequisites

- Python 3.7 or higher
- Telegram account
- Access to a database (e.g., PostgreSQL, MySQL, SQLite)

### Steps

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/moscow-university-schedule-bot.git
   cd moscow-university-schedule-bot
   ```

2. **Create a Virtual Environment**

   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install Dependencies**

   ```bash
   pip install -r requirements.txt
   ```

4. **Configure Environment Variables**

   Create a `.env` file in the root directory and add the following:

   ```env
   BOT_TOKEN=your_telegram_bot_token
   PG_URL=your_database_url
   ADMIN=user_id
   ```

5. **Initialize the Database**

   ```bash
   python manage.py init_db
   ```

6. **Run the Bot**

   ```bash
   python bot.py
   ```

## Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the Repository**
2. **Create a Feature Branch**

   ```bash
   git checkout -b feature/YourFeature
   ```

3. **Commit Your Changes**

   ```bash
   git commit -m "Add some feature"
   ```

4. **Push to the Branch**

   ```bash
   git push origin feature/YourFeature
   ```

5. **Open a Pull Request**

## License

This project is licensed under the [MIT License](LICENSE).

## Contact

For any questions or suggestions, feel free to reach out:

- **Email**: your.email@example.com
- **Telegram**: @vityooook

---
