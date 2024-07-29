FROM postgres:latest

# Expose the PostgreSQL default port
EXPOSE 5432
ENV POSTGRES_USER=yourusername
ENV POSTGRES_PASSWORD=yourpassword
ENV POSTGRES_DB=yourdatabase
VOLUME ["/var/lib/postgresql/data"]
CMD ["postgres"]
