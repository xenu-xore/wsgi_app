from sqlalchemy import Column, String, Integer, ForeignKey
from .utils import Base
from .utils import session
from sqlalchemy.orm import relationship


class ErrorDB(Exception):
    def __init__(self, data):
        self.data = data

    def __str__(self):
        return repr(self.data)


class City(Base):
    query = session.query_property()

    __tablename__ = 'city'

    id = Column(Integer, primary_key=True)
    name = Column(String(125))
    region_id = Column(Integer, ForeignKey('region.id'))

    def __init__(self, name):
        self.name = name

    def to_json(self):
        return {
            "name": self.name,
        }

    def __repr__(self):
        return "<City %r" % self.id


class Region(Base):
    query = session.query_property()

    __tablename__ = 'region'

    id = Column(Integer, primary_key=True)
    name_region = Column(String(125))
    city_first = relationship("City", backref='city_first', lazy='dynamic')

    def __init__(self, name_region):
        self.name_region = name_region

    def to_json(self):
        return {
            "city": [c.name for c in self.city_first]
        }

    def __repr__(self):
        return "<Region %r" % self.id


class Users(Base):
    query = session.query_property()

    __tablename__ = 'users'

    id = Column(Integer(), primary_key=True)
    firstName = Column(String(125))
    middleName = Column(String(125))
    lastName = Column(String(125))
    phone = Column(String(12))
    email = Column(String(50))

    city_id = Column(Integer(), ForeignKey('city.id', ondelete='CASCADE'))
    region_id = Column(Integer(), ForeignKey('region.id', ondelete='CASCADE'))

    city_first1 = relationship("City", backref='city_first1')
    region_first = relationship("Region", backref='region_first')

    def __repr__(self):
        return "<Users %s>" % self.id
