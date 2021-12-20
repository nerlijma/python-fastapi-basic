FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY ./app /app

WORKDIR /

#ENV PYTHONPATH=/app

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]