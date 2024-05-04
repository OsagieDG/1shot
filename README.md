# 1shot
A super simple, language-agnostic approach to setting up a new PostgreSQL local user and database with one command using Makefile automation.

### Prerequisite's
1. Clone the repository:
-          git clone https://github.com/addIOlogic/1shot.git

2. Modify the .env.local file to add your own credentials:
- DB_HOST=
- DB_PORT=
- DB_USER=
- DB_PASSWORD=
- DB_NAME=

3. To run the script, use:
-          make setup_database

