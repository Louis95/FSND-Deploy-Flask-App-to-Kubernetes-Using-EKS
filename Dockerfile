FROM python:3.7.2-slim

COPY . /main
WORKDIR /main

COPY ./requirements.txt /main/requirements.txt


ENTRYPOINT ["python", "main.py"]

EXPOSE 8080

CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]
