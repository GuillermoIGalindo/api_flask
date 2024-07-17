# Soil Quality Prediction API
Este servicio API, construido con Flask, permite predecir si un suelo es adecuado o no para sembrar caña de azúcar basándose en varios parámetros del suelo como el nitrógeno, potasio, humedad, fósforo, valor de pH y temperatura.

## Información del Servicio
El API utiliza un modelo de aprendizaje automático entrenado para predecir la calidad del suelo. El modelo evalúa los datos de entrada del usuario y determina si el suelo es apto para la siembra de caña. Además, integra capacidades para enviar datos a una API externa de Express para almacenamiento o procesamiento adicional.

## Requerimientos
Para ejecutar este servicio, necesitarás los siguientes componentes:

+ Python 3.8 o superior
+ Flask
+ Pandas
+ NumPy
+ Joblib
+ Requests

## Instalación
Para instalar y configurar tu ambiente local, sigue estos pasos:

+ Clona este repositorio en tu máquina local.
+ Instala las dependencias necesarias con el siguiente comando:
+ bash
+ Copiar código
+ pip install flask pandas numpy joblib requests flask-cors
+ Asegúrate de tener el modelo de aprendizaje automático (model_TT_RFC.pkl) y el esquema de datos (columns_set.json) en el directorio correcto como se especifica en el código.

**Archivo de Configuración de Datos**
El archivo columns_set.json define el esquema de los datos necesarios para realizar una predicción. Es un JSON que mapea cada columna esperada a un valor, inicialmente null, indicando que los valores serán proporcionados en tiempo de ejecución. Los campos incluidos son:

+ Nitrogen
+ Potassium
+ Humidity
+ Phosphorus
+ pH_Value
+ Temperature

Este archivo es crucial para que el modelo de aprendizaje automático interprete correctamente los datos de entrada.

## Uso (Desarrollo)
**Mediante Interfaz Web**
+ Navega a http://localhost:5000/ en tu navegador para acceder a la interfaz de usuario.
+ Completa el formulario con los valores de Nitrogeno, Fosforo, Potasio, Temperatura, Humedad y PH.
+ Haz clic en "Enviar" para procesar los datos y obtener una predicción.

**Utilizando Postman**
+ Configura un nuevo request de tipo POST en Postman con la URL http://localhost:5000/prediction.
+ Elige x-www-form-urlencoded como tipo de body.
+ Añade los campos necesarios y envía el request para obtener la predicción como datos de clave-valor.

## Uso (Producción)
Para acceder al servicio en un entorno de producción, visita el siguiente enlace: https://xjairrs.pythonanywhere.com/

**API de Producción**
Esta interfaz está diseñada para ser intuitiva y fácil de usar, asegurando que los usuarios puedan obtener rápidamente la información que necesitan sobre la calidad del suelo.

**Resultados de la Predicción**
Una vez que los datos son enviados a través del formulario de entrada, la aplicación procesa la información utilizando el modelo de aprendizaje automático Random Forest y muestra los resultados en una interfaz clara y sencilla.

