# =====================================
# EVENT TICKETING DATA ANALYSIS
# =====================================

# --- LOAD LIBRARIES ---
library(DBI)
library(RPostgres)
library(dplyr)
library(ggplot2)

# --- DATABASE CONNECTION ---
con <- dbConnect(
  RPostgres::Postgres(),
  host = "aws-1-eu-north-1.pooler.supabase.com",
  port = 6543,
  dbname = "postgres",
  user = "postgres.pedsqljrvqdsllylffip",
  password = "Infographics8@",
  sslmode = "require"
)

# --- EXTRACT DATA ---
data <- dbGetQuery(con, "
SELECT 
  t.ticket_id,
  e.event_name,
  e.event_type,
  e.location,
  c.full_name,
  t.ticket_type,
  t.price_kes,
  t.status
FROM tickets t
JOIN events e ON t.event_id = e.event_id
JOIN customers c ON t.customer_id = c.customer_id;
")

# --- ANALYSIS ---

# Revenue per event
revenue <- data %>%
  group_by(event_name) %>%
  summarise(total_revenue = sum(price_kes))

print(revenue)

# Ticket type distribution
ticket_types <- data %>%
  group_by(ticket_type) %>%
  summarise(count = n())

print(ticket_types)

# Ticket status distribution
status_summary <- data %>%
  group_by(status) %>%
  summarise(count = n())

print(status_summary)

# --- VISUALIZATION ---

# Revenue Plot
ggplot(revenue, aes(x = event_name, y = total_revenue, fill = event_name)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Revenue per Event", x = "Event", y = "Revenue (KES)")

ggsave("revenue_plot.png")

# Ticket Type Plot
ggplot(ticket_types, aes(x = ticket_type, y = count, fill = ticket_type)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Ticket Type Distribution", x = "Type", y = "Count")

ggsave("ticket_type_plot.png")

# Status Plot
ggplot(status_summary, aes(x = status, y = count, fill = status)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Ticket Status Distribution", x = "Status", y = "Count")

ggsave("status_plot.png")

# --- CLOSE CONNECTION ---
dbDisconnect(con)
