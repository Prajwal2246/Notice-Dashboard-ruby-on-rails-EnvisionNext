# Public Notice Board

A lightweight, RESTful public bulletin board built with **Ruby on Rails 7** and **PostgreSQL**. This application allows users to post announcements, categorize them, and pin important notices to the top of the feed.

## 📋 Features

- **Public Feed:** View all notices with pinned posts appearing first.
- **Category Filtering:** Filter notices by General, Event, Job, or Other.
- **CRUD Operations:** Create and Delete notices (No authentication required).
- **Responsive UI:** Built with Tailwind CSS for a clean, modern look.
- **Form Validations:** Real-time error handling for character limits and required fields.

---

## 🛠️ Prerequisites

- **Ruby:** 3.2+
- **PostgreSQL:** Installed and running
- **Bundler:** Installed (`gem install bundler`)

---

## 🚀 Setup Instructions

1. **Clone the repository**

   ```bash
   git clone [your-repository-url]
   cd public_notice_board

   ```

2. **Install dependencies**

   ```Bash
   bundle install

   ```

3. **Database Setup**

   ```Bash
   bin/rails db:create
   bin/rails db:migrate
   bin/rails db:seed

   ```

4. **Start the server**

   ```Bash
   bin/rails server
   ```

Visit the app at http://localhost:3000.