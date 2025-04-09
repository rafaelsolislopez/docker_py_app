
# Usa una imagen oficial de Python
FROM python:3.10

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de la aplicación al contenedor
COPY . /app

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 8000

# Comando para ejecutar la aplicación
#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

# Comando para ejecutar la aplicación incorporando pytest
CMD ["sh", "-c", "pytest tests && uvicorn app.main:app --host 0.0.0.0 --port 8000"]
