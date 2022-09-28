FROM python:3.7.3-alpine3.9
ENV PYTHONUNBUFFERED 1
RUN mkdir /Face-Find
WORKDIR /Face-Find
COPY requirements.txt /Face-Find/
RUN pip install -r requirements.txt
COPY . /Face-Find/

# Language: dockerfile