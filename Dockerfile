FROM python:3.10

RUN pip install --upgrade pip  

RUN mkdir /app

WORKDIR /app

COPY Pipfile Pipfile.lock /app/

RUN pip install pipenv && pipenv install --system --deploy

COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8080

CMD ["python3", "manage.py", "runserver"]


# Remove deploy if working on local system
