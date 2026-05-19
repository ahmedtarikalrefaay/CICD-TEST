from python:3.11-slim

workdir /CICD

COPY requirements.txt . 

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "etl.py"]