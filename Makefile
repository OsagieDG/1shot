# This Loads the environment variables from the .env.local file
include .env.local
export

# Makefile for creating PostgreSQL user and database with a password

.PHONY: create_user create_database

create_user:
	@echo "Checking if PostgreSQL user $(DB_USER) exists..."
	@psql -h $(DB_HOST) -p $(DB_PORT) -U postgres -tAc "SELECT 1 FROM pg_roles WHERE rolname='$(DB_USER)'" | grep -q 1 || \
		(echo "Creating PostgreSQL user..." && psql -h $(DB_HOST) -p $(DB_PORT) -U postgres -c "CREATE USER $(DB_USER) WITH PASSWORD '$(DB_PASSWORD)';")

grant_createdb_privilege:
	@echo "Granting CREATEDB privilege to PostgreSQL user $(DB_USER)..."
	@psql -h $(DB_HOST) -p $(DB_PORT) -U postgres -c "ALTER USER $(DB_USER) CREATEDB;"

create_database:
	@echo "Creating PostgreSQL database..."
	@createdb -h $(DB_HOST) -p $(DB_PORT) -U $(DB_USER) $(DB_NAME)


setup_database: create_user grant_createdb_privilege create_database




