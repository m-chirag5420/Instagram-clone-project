# Instagram-clone-project
SQL database for Apps similar to instagram

# 📸 Instagram Clone — SQL Analytics Project

This project simulates a simplified version of Instagram's core data structure and uses SQL to generate insights related to user behavior, content engagement, and social networking dynamics.

It includes a relational database schema, sample queries, and analysis-ready data for marketing and product use cases.

---

## 🗂️ Project Structure
instagram-clone-sql/
├── schema/
│   └── 01_create_instagram_clone_schema.sql
├── queries/
│   ├── ---
├── insights/
│   └── marketing_insights.md
├── data/
│   └── sample_data.sql (optional)
└── README.md

---

## 🔧 Technologies Used

- SQL (MySQL)
- MySQL Workbench
- Git & GitHub
- GitHub Desktop (for version control)

---

## 📋 Features

- Creation of a normalized Instagram-style relational database
- Use of constraints: `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`
- Analysis of:
  - Most followed users
  - Average likes per post per user
  - Posting patterns by day
  - Most used hashtags
- Clean SQL structure for scalable analytics

---

## 🔍 Schema Overview

Tables included:

- `users`
- `photo`
- `comment`
- `likes`
- `follows`
- `tags`
- `photo_tags`

Relational integrity is maintained using foreign key constraints and composite keys where applicable.

---

## 📊 Sample Insights

> ✅ Who are the most followed users?  
> ✅ What time/day do users post the most?  
> ✅ What is the average number of likes per photo by user?  
> ✅ Which hashtags drive the most engagement?

All SQL queries are stored in the `queries/` folder and are ready to run in any SQL environment with the schema.

---

## 🚀 How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/instagram-clone-sql.git