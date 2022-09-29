FROM python:3.7.3-alpine3.9

WORKDIR /app

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONOTWRITEBYTECODE 1

RUN pip install --upgrade pip

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python", "manage.py", "runserver" ]

