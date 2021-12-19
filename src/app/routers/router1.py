from fastapi import APIRouter

router = APIRouter()

@router.get('/demo', tags=['demo'])
def get():
    return {'detail': 'Hola Mundo'}