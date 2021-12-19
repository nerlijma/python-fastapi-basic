FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

COPY app/requirements.txt /
RUN pip install -r /requirements.txt

COPY ./app /app

WORKDIR /

#ENV PYTHONPATH=/app

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]