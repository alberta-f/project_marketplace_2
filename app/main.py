from fastapi import FastAPI

from app.routes.auth import router

app = FastAPI(title='Marketplace blog')

app.include_router(router)

@app.get('/')
async def root():
    return {"message": "hi!"}
