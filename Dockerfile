FROM python:3.13.0a4-alpine

# Build dependencies
RUN apk add build-base gcc

# Layer caching
COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /EvilOSX
WORKDIR /EvilOSX

CMD ["python", "start.py"]
