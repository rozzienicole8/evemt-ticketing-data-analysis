# 📊 Event Ticketing Data Analysis

## 📖 About the Project
This project analyzes an **Event Ticketing System** using **R (Posit Cloud)** and **Supabase (PostgreSQL)**.  
It demonstrates how relational databases can be connected to R for data extraction, analysis, and visualization.

The dataset includes three tables: **events**, **customers**, and **tickets**, which are used to evaluate revenue, ticket distribution, and event performance.

---

## 🛠 Built With

### Tech Stack
- R (Posit Cloud)
- Supabase (PostgreSQL)
- DBI
- RPostgres
- dplyr
- ggplot2

---

### Key Features
- Cloud database connection using Supabase
- SQL joins across relational tables
- Revenue analysis per event
- Ticket type distribution analysis
- Ticket status tracking
- Data visualization using ggplot2

---

## 🚀 Live Demo
## 🗄️ Database Setup (Supabase)
The database was created using Supabase PostgreSQL with three relational tables:
- events
- customers
- tickets

### Supabase Table Structure
![Supabase Tables](images/supabase_tables.png)
<img width="1366" height="768" alt="Screenshot (27)" src="https://github.com/user-attachments/assets/e53c06a1-a1d0-4700-9bde-c8c5e8418e12" />
<img width="1366" height="768" alt="Screenshot (28)" src="https://github.com/user-attachments/assets/6ff687eb-5154-4005-a72f-988a26850554" />



---

## 💻 Getting Started

### Setup
1. Create a Supabase project
2. Create tables: events, customers, tickets
3. Insert dataset records
4. Connect RStudio Cloud to Supabase

---

### Prerequisites
- R / Posit Cloud account
- Supabase account
- Internet connection

---

### Install

Run in R:

```r id="z7kq3a"
install.packages("DBI")
install.packages("RPostgres")
install.packages("dplyr")
install.packages("ggplot2")
