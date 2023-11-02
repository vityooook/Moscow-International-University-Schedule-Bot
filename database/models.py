from sqlalchemy import Integer, String
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column

from .engine import Database


class User(Database.Base):
    __tablename__ = "users"

    id: Mapped[int] = mapped_column(primary_key=True)
    group: Mapped[str] = mapped_column(nullable=False)
    first_name: Mapped[str] = mapped_column()
    last_name: Mapped[str] = mapped_column()
    username: Mapped[str] = mapped_column(nullable=False)


class Group(Database.Base):
    __tablename__ = "groups"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column()
    course: Mapped[str] = mapped_column()


def register_models():
    Database.Base.metadata.create_all(Database().engine)