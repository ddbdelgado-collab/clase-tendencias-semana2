# 1. Imagen base oficial de Python ligera basada en Debian Linux
FROM python:3.15.2-slim

# Omito paso 2,3 y 4 hago un ajuste
# 4. Instalar las dependencias de Python sin guardar caché para reducir el tamaño
RUN pip install flask

# 5. Copiar el código fuente de nuestra aplicación
COPY app.py .

# 6. Documentar el puerto que expone el contenedor
EXPOSE 5000

# 7. Comando que se ejecutará al iniciar el contenedor
CMD ["python", "app.py"]