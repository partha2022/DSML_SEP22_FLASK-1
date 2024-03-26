FROM python:3.10.4-slim-buster

WORKDIR /C:/Users/PARTHA/Desktop/docker

COPY requirements.txt /C:/Users/PARTHA/Desktop/docker/requirements.txt

RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "-m", "flask", "--app", "hello", "run","--host=0.0.0.0"]
