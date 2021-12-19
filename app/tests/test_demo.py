from fastapi import status
from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_demo1():
    response = client.get("/demo")
    assert response.status_code == status.HTTP_200_OK