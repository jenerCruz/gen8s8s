Dockerfile
FROM n8nio/n8n:latest

# Copia configuración personalizada
COPY config.json /home/node/.n8n/config.json

# Solo si necesitas.env para desarrollo local (no recomendado en producción Fly.io)
# COPY.env /home/node/.n8n/.env

RUN chown -R node:node /home/node/.n8n

USER node