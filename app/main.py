from fastapi import FastAPI
from app.routers import router1

app = FastAPI(
    title="mi project"
)

app.include_router(router1.router)

