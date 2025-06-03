# QuestDB Basics

This repository provides a simple, standalone environment to learn and experiment with [QuestDB](https://questdb.io/), a high-performance time-series database. It includes SQL scripts and a Docker-based setup for running QuestDB locally.

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Data-Ingest-Ops-WSC/questdb-basics.git
cd questdb-basics
```

### 2. Start QuestDB using Docker
```bash
docker-compose up
```

QuestDB will be available at:

Web Console: http://localhost:9000

PostgreSQL Port (wire protocol): localhost:8812

### 📁 Project Structure
```
questdb-basics/
├── docker-compose.yml         # Starts QuestDB container
├── sql/
│   ├── create_table.sql       # SQL to create a time-series table
│   ├── insert_data.sql        # Insert rows manually with SQL
│   └── query_examples.sql     # Sample queries using SQL
└── README.md                  # You're here
```

### 🗃️ Importing Data

Manual SQL Insert
Open the sql/insert_data.sql file in the Web Console and run it to manually insert a few rows into a table.

### 📊 Querying Data
Use the queries from sql/query_examples.sql to explore the data. Example:

``` sql
-- Show all records
SELECT * FROM trades;

-- Get average price sampled by time
SELECT symbol, avg(price)
FROM trades
SAMPLE BY 10s;

-- Total traded volume per asset
SELECT symbol, sum(volume)
FROM trades
GROUP BY symbol;
```

### 🧠 What You'll Learn
How to run QuestDB locally with Docker

How to create and populate a time-series table

How to use SQL to query and analyze time-based data

### ✅ Requirements
Docker

Docker Compose

No programming required — just SQL and your browser.

### 📚 Documentation
QuestDB Docs

QuestDB SQL Reference

Time-series Use Cases

### 📜 License
This project is licensed under the MIT License.

---

Let me know if you want to include links to specific dashboards or exten