FROM python:3.11-slim

# Instalar las dependencias del sistema necesarias para compilar numpy y scikit-learn
RUN apt-get update && apt-get install -y \
    build-essential \
    libatlas-base-dev \
    g++ \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY . /app

# Actualizar pip y setuptools
RUN pip install --upgrade pip setuptools wheel

# Instalar cython usando pip
RUN pip install cython

# Instalar las dependencias de Python
RUN pip install -r requirements.txt

# Comando para ejecutar la aplicación
CMD ["python", "flask_app.py"]
