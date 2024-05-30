# 1shot
A simple, language-agnostic, declarative approach to setting up a new PostgreSQL local user and database with one command using Makefile automation.

## Prerequisites

### Clone the repository:
-          git clone https://github.com/addIOlogic/1shot.git

### Modify the `.env.local` file to add your own credentials:
```
DB_HOST=localhost
DB_PORT=5432
DB_USER=
DB_PASSWORD=
DB_NAME=
```
### To run the script, use:
-          make setup_database

![1shot](https://github.com/addIOlogic/1shot/blob/main/1shot.png)


