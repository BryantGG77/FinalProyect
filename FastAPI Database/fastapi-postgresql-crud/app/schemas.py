from pydantic import BaseModel

class UserCreate(BaseModel):
    name: str
    email: str
    password: str


class CardCreate1(BaseModel):
    img: str
    city: str
    country: str
    price: int
    discountPrice: int
    paragraph: str


class CardCreate2(BaseModel):
    img: str
    cityCountry: str
    price: int
    daysTrip: str

class CardCreate3(BaseModel):
    img : str
    paragraph: str
    date: str