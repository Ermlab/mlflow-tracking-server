FROM python:3.8

ARG ARTIFACT_ROOT
ARG HOST
ARG BACKEND_STORE_URI
ARG GOOGLE_APPLICATION_CREDENTIALS

ENV ARTIFACT_ROOT=${ARTIFACT_ROOT}
ENV HOST=${HOST}
ENV BACKEND_STORE_URI=${BACKEND_STORE_URI}
ENV GOOGLE_APPLICATION_CREDENTIALS=${GOOGLE_APPLICATION_CREDENTIALS}

RUN apt-get update && apt-get install -y libpq-dev && \
    rm -rf /var/lib/apt/lists/*

RUN pip install psycopg2 mlflow google-cloud-storage

CMD mlflow server \
    --backend-store-uri ${BACKEND_STORE_URI} \
    --default-artifact-root ${ARTIFACT_ROOT} \
    --host ${HOST}
