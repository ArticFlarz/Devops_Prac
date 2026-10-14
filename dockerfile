FROM nginx:alpine
COPY indexx.html /usr/share/nginx/html/indexx.html
EXPOSE 80
FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]