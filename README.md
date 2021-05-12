# MLflow tracking server

Docker environment with MLflow tracking server.

## Running

To run MLflow tracking server you can use prepared docker-compose.yml file or 
Dockerfile.

### docker-compose

This option additionally creates container with PostgreSQL database. You should 
set environment variables in `variables` section or use `.env` file. List of
required variable can be found in `.env.default` file.

### Dockerfile

If you don't need PostgreSQL database, it will be good option to choose Dockerfile
option. Just build and run. Don't forget about required variables – pass it as
arguments.

## Variables

| Name                      | Required| Description                           |
|---------------------------|---------|---------------------------------------|
|ARTIFACT_ROOT              | yes     | Value for MLflow server --default-artifact-root param |
|HOST                       | yes     | Value for MLflow server --host param |
|BACKEND_STORE_URI          | yes     | Value for MLflow server --backend-store-uri param|
|GOOGLE_APPLICATION_CREDENTIALS | no  | Credentials for Google Cloud |
|POSTGRES_USER              | yes – for docker-compose run option | PostgreSQL username|
|POSTGRES_PASSWORD          | yes – for docker-compose run option | PostgreSQL password|
|POSTGRES_DB                | yes – for docker-compose run option | PostgreSQL database name|
