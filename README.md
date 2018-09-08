
# Mailtrain Docker

This is the repository for my take at using Mailtrain on Docker. It is split into two parts, the container (see `container/`, image `tijlvdb/mailtrain` on Docker Cloud) and the `docker-compose.yml` file that brings it together.

You can configure Mailtrain in the `config/production.toml` file.

# Usage

You will need Docker and Docker-Compose installed, then use the following command to start the services:

```bash
docker-compose up -d
```

# License

This project is MIT-licensed. See `LICENSE.md`.