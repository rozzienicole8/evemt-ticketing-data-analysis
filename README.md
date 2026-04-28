# 📊 Event Ticketing Data Analysis

## 📖 About the Project
This project analyzes an **Event Ticketing System** using **R (Posit Cloud)** and **Supabase (PostgreSQL)**.  
This project focuses on analyzing event ticketing data to uncover key insights into sales performance, revenue trends, and customer demand patterns. The objective is to simulate a real-world business scenario where event organizers use data-driven insights to optimize ticket pricing, improve event planning, and maximize revenue. By applying data analysis techniques, this project transforms raw ticketing data into meaningful insights that support strategic decision-making.

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

## 🔌 R to Supabase Connection

RStudio Cloud was used to connect to Supabase using RPostgres.

### Connection Established
![R Connection]
<img width="1366" height="768" alt="Screenshot (36)" src="https://github.com/user-attachments/assets/860e7cc4-c55d-42de-8497-70f0118fefbb" />
)

## 📊 Analysis Outputs

### Revenue per Event
<img width="513" height="289" alt="5146d1c0-66b8-4d2a-af92-998e6d56fa29" src="https://github.com/user-attachments/assets/ef3410d6-9cfc-4557-b11c-764ed17336e9" />


### Ticket Type Distribution
<img width="513" height="289" alt="758ece29-1cca-4917-b7b8-2068b87a6410" src="https://github.com/user-attachments/assets/5d968ba9-e850-41dd-a2bd-e235d5971609" />


### Ticket Status Distribution
<img width="513" height="289" alt="468865c7-3d2b-48f1-b6cd-36cb3c2c8574" src="https://github.com/user-attachments/assets/7a743f55-faec-49e0-b255-7fe655495690" />

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

```
### 💻 Usage

To run this project, execute the main R script in **Posit Cloud (RStudio Cloud)** after setting up the Supabase connection.

The script will:
- Connect to the Supabase PostgreSQL database
- Extract data from the `events`, `customers`, and `tickets` tables
- Perform data analysis using `dplyr`
- Generate visualizations using `ggplot2`
- Save output plots in the `images/` folder

---

### ▶️ Run the Project

```r
source("analysis.R")
This will:

- Connect to Supabase
- Extract data
- Perform analysis
- Generate visualizations
-----
```
## 👥 Authors

👤 **Rozzie Nicole**

- GitHub: [@nicolerozzie9@gmail.com](https://github.com/nicolerozzie9@gmail.com)

----
```
