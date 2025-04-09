# docker_py_app
Dockerize python app


#Constuir la imagen del contenedor
docker build -t mi_fastapi_app .

#Correr el contenedor
docker run -d -p 8000:8000 mi_fastapi_app

#Si quieres que los tests se ejecuten en cada inicio del contenedor en lugar de durante la #construcción, puedes modificar el CMD en el Dockerfile para ejecutar primero pytes

CMD ["sh", "-c", "pytest tests && uvicorn app.main:app --host 0.0.0.0 --port 8000"]
