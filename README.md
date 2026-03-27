# SQL Ultimate Course – Companion Repository

This repository contains all the **datasets, SQL scripts, and documentation** that accompany the **30‑hour SQL course** (from beginner to advanced) created by **Baraa Khatib Salkini (Data With Baraa)**.

Everything is provided for free – you can follow along with the course, practice on real‑world data, and adapt the scripts for your own projects.

---

## 📌 What’s Inside

- **Real‑world datasets** (ERP & CRM data) – located in [`datasets/`](./datasets)
- **SQL scripts** covering fundamentals, advanced queries, and optimisation – in [`scripts/`](./scripts)
- **Course documentation** with architecture diagrams and explanations – in [`docs/`](./docs)
- **Docker configuration** to spin up a PostgreSQL instance instantly – see `docker-compose.yaml`

---

## 🛠️ Tools You’ll Need

| Tool | Purpose |
|------|---------|
| [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) | Free SQL Server host |
| [SQL Server Management Studio (SSMS)](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms) | GUI for managing databases |
| [Docker](https://www.docker.com/products/docker-desktop/) | Run PostgreSQL in a container (recommended) |
| Any SQL client | e.g., DBeaver, pgAdmin, Azure Data Studio |

---

## 📂 Repository Structure

```
sql-ultimate-course/
│
├── datasets/                # Raw CSV files (ERP & CRM)
├── docs/                    # Documentation & architecture
├── scripts/                 # All SQL scripts from the course
├── files/                   # Additional resources (e.g., case statements)
├── docker-compose.yaml      # PostgreSQL container setup
└── LICENSE                  # MIT License
```

---

## 🚀 Quick Start with Docker (PostgreSQL)

1. **Clone the repository**
   ```bash
   git clone https://github.com/MatheusSabaudo/SQL-Advanced.git
   cd SQL-Advanced
   ```

2. **Start the PostgreSQL container**
   ```bash
   docker-compose up -d
   ```

3. **Connect to the database**  
   Use any SQL client with these credentials:
   - Host: `localhost`
   - Port: `5432`
   - Database: `postgres`
   - User: `postgres`
   - Password: `postgres` (as defined in `docker-compose.yaml`)

4. **Import the datasets**  
   Load the CSV files from `datasets/` into your database using your preferred tool.

### Alternative: SQL Server

If you prefer SQL Server:
- Install [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) and [SSMS](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms).
- Create a new database and run the scripts from `scripts/` in order.
- Import the CSV files via the Import/Export Wizard.

---

## 📖 Learning Path

The scripts are organised to follow a logical progression:

1. **Basics** – SELECT, WHERE, JOINs, GROUP BY  
2. **Intermediate** – Subqueries, CTEs, window functions  
3. **Advanced** – Stored procedures, triggers, query optimisation  
4. **Projects** – Exploratory data analysis, data warehousing examples  

Refer to the [`docs/`](./docs) folder for detailed explanations and architecture diagrams.

---

## 🙌 Credits

This repository is based on the **30‑hour SQL course** by **Baraa Khatib Salkini (Data With Baraa)**. All datasets, scripts, and documentation are taken directly from the course materials and are provided here as a free companion resource.

If you find this useful, please consider checking out the original course content (available on YouTube) and supporting the creator.

---

## 📜 License

This project is licensed under the **MIT License**. You are free to use, modify, and share this material with proper attribution. See the [LICENSE](LICENSE) file for details.

---

*Happy querying!* 🎉
