# docker build -t python:v1 . -f Dockerfile
# docker tag python:v1 mitashkistz/testd:pv1 
# docker push mitashkistz/testd:pv1
# docker run -tid -p 8080:8080 python:v1
#FROM arm64v8/python


# docker build -t python:v2 . -f Dockerfile --platform=linux/amd64
# docker tag python:v2 mitashkistz/testd:pv2 
# docker push mitashkistz/testd:pv2
FROM amd64/python


WORKDIR /app
COPY . .
CMD python server.py
