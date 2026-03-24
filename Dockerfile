FROM python:3.12

WORKDIR /usr/src/app

# логи Python будут сразу выводиться в stdout/stderr без буферизации
ENV PYTHONUNBUFFERED=1

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
