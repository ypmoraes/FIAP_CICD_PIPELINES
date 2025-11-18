# Dockerfile Super Simples para Front-end

# Usar uma imagem do nginx (servidor web)
FROM nginx:alpine

# Copiar o arquivo HTML para a pasta do nginx
COPY index.html /usr/share/nginx/html/

# Expor a porta 80 (padrão do nginx)
EXPOSE 80

# O nginx já inicia automaticamente, não precisa de CMD