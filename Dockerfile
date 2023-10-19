FROM python:3

WORKDIR /app

COPY ./ ./

RUN sudo apt-get update
RUN sudo pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["python", "source/app.py"]
