# i-em
I-EM Cloud

## Docker dev commands

```sh
docker compose --env-file template.env --env-file .env -f docker-compose.dev.yml down
```

```sh
docker compose --env-file template.env --env-file .env -f docker-compose.dev.yml build --no-cache 
```

```sh
docker compose --env-file template.env --env-file .env -f docker-compose.dev.yml up
```

## Popolate db

```sh
psql -v ON_ERROR_STOP=0 --username "postgres" -d ${DBNAME} < ${DUMPPATH}/bkp_data_2024-01-21.sql
```