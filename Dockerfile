FROM python:3

WORKDIR /app

COPY ./ ./

RUN apt-get update
RUN pip install -r --no-cache-dir requirements.txt

EXPOSE 80

CMD ["python", "source/app.py"]
