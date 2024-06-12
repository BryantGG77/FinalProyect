from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
import crud
import models
import schemas
from database import SessionLocal1, SessionLocal2, SessionLocal3, SessionLocal4, engine1, engine2, engine3, engine4, Base1, Base2, Base3, Base4
from fastapi.middleware.cors import CORSMiddleware

Base1.metadata.create_all(bind=engine1)
Base2.metadata.create_all(bind=engine2)
Base3.metadata.create_all(bind=engine3)
Base4.metadata.create_all(bind=engine4)

app = FastAPI()

origins = [
    "http://localhost:5173"
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

#! FUNCTIONS DATABASES
def get_db1():
    db = SessionLocal1()
    try:
        yield db
    finally:
        db.close()

def get_db2():
    db = SessionLocal2()
    try:
        yield db
    finally:
        db.close()

def get_db3():
    db = SessionLocal3()
    try:
        yield db
    finally:
        db.close()

def get_db4():
    db = SessionLocal4()
    try:
        yield db
    finally:
        db.close()

#! ROUTES DATABASE users

@app.post("/users/create")
def create_user(user: schemas.UserCreate, db: Session = Depends(get_db1)):
    db_user = crud.create_user_db1(db=db, user=user)
    return db_user

@app.get("/users/")
def read_users(db: Session = Depends(get_db1)):
    users = crud.get_users_db1(db)
    return users

@app.get("/users/{user_id}")
def read_user(user_id: int, db: Session = Depends(get_db1)):
    user = crud.get_user_by_id_db1(db, user_id)
    if user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return user

@app.put("/users/update/{user_id}")
def update_user(user_id: int, user_data: schemas.UserCreate, db: Session = Depends(get_db1)):
    updated_user = crud.update_user_db1(db, user_id, user_data)
    if updated_user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return updated_user

@app.delete("/users/delete/{user_id}")
def delete_user(user_id: int, db: Session = Depends(get_db1)):
    success = crud.delete_user_db1(db=db, user_id=user_id)
    if not success:
        raise HTTPException(status_code=404, detail="User not found")
    return {"message": "User deleted successfully"}


#! ROUTES DATABASE deals_and_discounts

@app.post("/cards_discounts/create")
def create_card(card: schemas.CardCreate1, db: Session = Depends(get_db2)):
    db_card1 = crud.create_card_db2(db=db, card=card)
    return db_card1

@app.get("/cards_discounts/")
def read_cards(db: Session = Depends(get_db2)):
    cards1 = crud.get_cards_db2(db)
    return cards1

@app.get("/cards_discounts/{card_id}")
def read_card(card_id: int, db: Session = Depends(get_db2)):
    card1 = crud.get_card_by_id_db2(db, card_id)
    if card1 is None:
        raise HTTPException(status_code=404, detail="Card not found")
    return card1

#! ROUTES DATABASE best_vacation_plan

@app.post("/cards_vacation_plans/create")
def create_card(card: schemas.CardCreate2, db: Session = Depends(get_db3)):
    db_card2 = crud.create_card_db3(db=db, card=card)
    return db_card2

@app.get("/cards_vacation_plans/")
def read_cards(db: Session = Depends(get_db3)):
    cards2 = crud.get_cards_db3(db)
    return cards2

@app.get("/cards_vacation_plans/{card_id}")
def read_card(card_id: int, db: Session = Depends(get_db3)):
    card2 = crud.get_card_by_id_db3(db, card_id)
    if card2 is None:
        raise HTTPException(status_code=404, detail="Card not found")
    return card2

#! ROUTES DATABASE blogs

@app.post("/cards_blogs/create")
def create_card(card: schemas.CardCreate3, db: Session = Depends(get_db4)):
    db_card3 = crud.create_card_db4(db=db, card=card)
    return db_card3

@app.get("/cards_blogs/")
def read_cards(db: Session = Depends(get_db4)):
    cards3 = crud.get_cards_db4(db)
    return cards3

@app.get("/cards_blogs/{card_id}")
def read_card(card_id: int, db: Session = Depends(get_db4)):
    card3 = crud.get_card_by_id_db4(db, card_id)
    if card3 is None:
        raise HTTPException(status_code=404, detail="Card not found")
    return card3