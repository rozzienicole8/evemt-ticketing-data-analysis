# 📘 Data Dictionary

## 📖 Description
This dataset represents an **Event Ticketing System** designed to manage events, customers, and ticket sales.  
It is structured as a relational database with three interconnected tables: **events**, **customers**, and **tickets**.

The purpose of this dataset is to support data analysis tasks such as:
- tracking ticket sales
- analyzing revenue per event
- understanding customer participation
- evaluating ticket types and status trends

---

## 📌 events

| Column | Description |
|--------|------------|
| event_id | Unique identifier for each event |
| event_name | Name of the event |
| event_type | Category of the event (e.g., Concert, Conference, Sports) |
| event_date | Scheduled date of the event |
| location | Location where the event is held |

---

## 👤 customers

| Column | Description |
|--------|------------|
| customer_id | Unique identifier for each customer |
| full_name | Full name of the customer |
| email | Customer email address |
| phone | Customer contact number |

---

## 🎟 tickets

| Column | Description |
|--------|------------|
| ticket_id | Unique identifier for each ticket |
| event_id | Foreign key referencing the events table |
| customer_id | Foreign key referencing the customers table |
| ticket_type | Type of ticket (VIP or Regular) |
| price_kes | Price of the ticket in Kenyan Shillings |
| status | Ticket status (sold, pending, cancelled) |

---

## 🔗 Relationships

- One **event** can have many **tickets**
- One **customer** can purchase many **tickets**
- The **tickets** table links events and customers through foreign keys

---
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/546181e0-c71b-4c82-b458-02aa6c5bb003" />

## 📊 Analytical Use

This dataset supports:

- Revenue analysis using `price_kes`
- Event performance comparison using `event_name`
- Customer behavior tracking via `customer_id`
- Ticket trend analysis using `ticket_type` and `status`
