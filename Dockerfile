FROM python:3.9.19-alpine

# Build dependencies
RUN apk add build-base gcc

# Layer caching
COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /EvilOSX
WORKDIR /EvilOSX

CMD ["python", "start.py"]
