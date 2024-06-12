from sqlalchemy import Column, Integer, String
from database import Base1, Base2, Base3, Base4

class User(Base1):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String)
    email = Column(String, unique=True, index=True)
    password = Column(String)

class Card1(Base2):
    __tablename__ = "deals_and_discounts"

    id = Column(Integer, primary_key=True, index=True)
    img = Column(String)
    city = Column(String)
    country = Column(String)
    price = Column(Integer)
    discountPrice = Column(Integer)
    paragraph = Column(String)

class Card2(Base3):
    __tablename__ = "best_vacation_plan"

    id = Column(Integer, primary_key=True, index=True)
    img = Column(String)
    cityCountry = Column(String)
    price = Column(Integer)
    daysTrip = Column(String)

class Card3(Base4):
    __tablename__ = "blogs"

    id = Column(Integer, primary_key=True, index=True)
    img = Column(String)
    paragraph = Column(String)
    date = Column(String)