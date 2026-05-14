# Usar una imagen base de Node.js ligera
FROM node:20-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias (solo producción para optimizar)
RUN npm ci --only=production

# Copiar el resto del código
COPY . .

# Exponer el puerto del backend (3000 por defecto)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "server.js"]
