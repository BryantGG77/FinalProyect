from sqlalchemy.orm import Session
from models import User, Card1, Card2, Card3
from schemas import UserCreate, CardCreate1, CardCreate2, CardCreate3
from database import SessionLocal1, SessionLocal2, SessionLocal3, SessionLocal4

#! CRUD DATABASE USERS

def get_users_db1(db: Session):
    return db.query(User).all()

def create_user_db1(db: Session, user: UserCreate):
    db_user = User(name=user.name, email=user.email, password=user.password)
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

def get_user_by_id_db1(db: Session, user_id: int):
    return db.query(User).filter(User.id == user_id).first()

def update_user_db1(db: Session, user_id: int, user_data: UserCreate):
    db_user = db.query(User).filter(User.id == user_id).first()
    if db_user:
        db_user.name = user_data.name
        db_user.email = user_data.email
        db_user.password = user_data.password
        db.commit()
        db.refresh(db_user)
        return db_user
    return None

def delete_user_db1(db: Session, user_id: int):
    db_user = db.query(User).filter(User.id == user_id).first()
    if db_user:
        db.delete(db_user)
        db.commit()
        return True
    return False


#! CRUD DATABASE cards deals_and_discounts

def get_cards_db2(db: Session):
    return db.query(Card1).all()

def create_card_db2(db: Session, card: CardCreate1):
    db_card = Card1(img=card.img, city=card.city, country=card.country, price=card.price, discountPrice=card.discountPrice)
    db.add(db_card)
    db.commit()
    db.refresh(db_card)
    return db_card

def get_card_by_id_db2(db: Session, card_id: int):
    return db.query(Card1).filter(Card1.id == card_id).first()

#! CRUD DATABASE cards_vacation_plans

def get_cards_db3(db: Session):
    return db.query(Card2).all()

def create_card_db3(db: Session, card: CardCreate2):
    db_card = Card2(img=card.img, cityCountry=card.cityCountry, price=card.price, daysTrip=card.daysTrip)
    db.add(db_card)
    db.commit()
    db.refresh(db_card)
    return db_card

def get_card_by_id_db3(db: Session, card_id: int):
    return db.query(Card2).filter(Card2.id == card_id).first()

#! CRUD DATABASE blogs

def get_cards_db4(db: Session):
    return db.query(Card3).all()

def create_card_db4(db: Session, card: CardCreate3):
    db_card = Card3(img=card.img, paragraph=card.paragraph, date=card.date)
    db.add(db_card)
    db.commit()
    db.refresh(db_card)
    return db_card

def get_card_by_id_db4(db: Session, card_id: int):
    return db.query(Card3).filter(Card3.id == card_id).first()