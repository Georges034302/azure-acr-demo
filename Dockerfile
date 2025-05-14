FROM python:3.9-slim 

WORKDIR /app

COPY "index.html" "data.txt" /app/

COPY .github/apps/app.py /app/

COPY .github/scripts /app/scripts

EXPOSE 80

RUN chmod +x /app/scripts/entrypoint.sh

ENTRYPOINT ["sh", "/app/scripts/entrypoint.sh"]