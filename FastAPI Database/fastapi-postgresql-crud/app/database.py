from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL1 = "postgresql://postgres:1234@localhost:5432/python_db"
SQLALCHEMY_DATABASE_URL2 = "postgresql://postgres:1234@localhost:5432/deals_and_discounts"
SQLALCHEMY_DATABASE_URL3 = "postgresql://postgres:1234@localhost:5432/best_vacation_plan"
SQLALCHEMY_DATABASE_URL4 = "postgresql://postgres:1234@localhost:5432/blogs"

engine1 = create_engine(SQLALCHEMY_DATABASE_URL1)
engine2 = create_engine(SQLALCHEMY_DATABASE_URL2)
engine3 = create_engine(SQLALCHEMY_DATABASE_URL3)
engine4 = create_engine(SQLALCHEMY_DATABASE_URL4)

SessionLocal1 = sessionmaker(autocommit=False, autoflush=False, bind=engine1)
SessionLocal2 = sessionmaker(autocommit=False, autoflush=False, bind=engine2)
SessionLocal3 = sessionmaker(autocommit=False, autoflush=False, bind=engine3)
SessionLocal4 = sessionmaker(autocommit=False, autoflush=False, bind=engine4)

Base1 = declarative_base()
Base2 = declarative_base()
Base3 = declarative_base()
Base4 = declarative_base()


