version: '3.3'

services:
  db:
    image: postgres
    restart: always
    environment:
      - POSTGRES_DB=postgresdb
      - POSTGRES_USER=cateinarecon
      - POSTGRES_PASSWORD=recC8ina9876
    ports:
      - '5444:5432'
    container_name: postgresdb
    hostname: postgresdb
    volumes:
      - recon-postgres-keycloak-volnew1:/var/lib/postgresql/data

volumes:
   recon-postgres-keycloak-volnew1:
