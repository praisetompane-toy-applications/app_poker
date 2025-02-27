FROM python:3.11

WORKDIR /app_poker

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update

COPY . .

RUN pip install --cache-dir /pip.cache --src /usr/local/src -r requirements.txt

EXPOSE 8080

CMD ["python", "-m", "flask", "--app", "src/app_poker/app", "run", "--host=0.0.0.0", "--port=8080"]
