import os
import time
from flask import Flask, abort, request, jsonify, g, url_for
from flask_sqlalchemy import SQLAlchemy
from werkzeug.security import generate_password_hash, check_password_hash

import json
from fastai import *
from fastai.vision import *
from fastai.basic_train import load_learner


from flask import Flask, request, flash, url_for, redirect, \
     render_template, abort
from flask_sqlalchemy import SQLAlchemy
import sqlalchemy.orm
from cockroachdb.sqlalchemy import run_transaction


app = Flask(__name__)
app.config.from_pyfile('app.cfg')
db = SQLAlchemy(app)
sessionmaker = sqlalchemy.orm.sessionmaker(db.engine)

learn = load_learner(path='./models', file='model.pkl')
classes= ['cardboard', 'glass', 'metal', 'paper', 'plastic', 'trash','books','curtains','organic']




class User(db.Model):
    __tablename__ = 'users'
    user_id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(32), index=True)
    password = db.Column(db.String(128))

    def __init__(self,username):
        self.username= username

    def hash_password(self, password):
        self.password = password #generate_password_hash(password)

    def verify_password(self, password):
        hash_pass = password #generate_password_hash(password)
        return self.password == hash_pass


@app.route('/test')
def hello():
    return jsonify({'message': 'Hello world'})

@app.route('/register', methods=['POST'])
def register():
    username = request.json.get('username')
    password = request.json.get('password')

    def check_user_exists(session):
        user = bool(session.query(User).filter_by(username=username).first())
        if user:
            abort(501,{'message':'Username already exists'})
    run_transaction(sessionmaker, check_user_exists)
    
    def callback(session):
        user = User(username=username)
        user.hash_password(password)
        session.add(user)      
    run_transaction(sessionmaker, callback)
    
    # db.session.commit()
    return (jsonify({'username': username,'message':'User created successfully'}), 201)


@app.route('/login', methods=['POST'])
def login():
    username = request.json.get('username')
    password = request.json.get('password')
    print('inside login')
    user = None 
    def callback(session):
        user = session.query(User).filter_by(username=username).one()
        if not user:  
            abort(501,{'message':'Username or password incorrect'})
        
        if not user.verify_password(password):
            abort(501,{'message':'Username or password incorrect'})
        else: 
            return (jsonify({'username': username,'message':'Login successful'}), 200)

    run_transaction(sessionmaker, callback)

@app.route('/users', methods=['GET'])
def users():
    def callback(session):
        all_users = session.query(User).filter_by().all()
        res={}
        print('au',all_users)
        if not all_users : 
            return (jsonify(res),500)
        else:
            users =[]
            for user in all_users:
                users.append({
                    'user_id':user.user_id,
                    'username':user.username,
                    'password':'####'
                })
            return (jsonify({'users':users}),200)


    return run_transaction(sessionmaker, callback)


def predict_single(img_file):
    'function to take image and return prediction'
    prediction = learn.predict(open_image(img_file))
    probs_list = prediction[2].numpy()
    return {
        'category': prediction[1].item(),
        'probs': {c: round(float(probs_list[i]), 5) for (i, c) in enumerate(classes)}
    }


# route for prediction
@app.route('/predict', methods=['POST'])
def predict():
    file_name = request.files['image']
    print(file_name)
    return jsonify(predict_single(file_name))


if __name__ == '__main__':
    # if not os.path.exists('db.sqlite'):
    #     db.create_all()
    app.run(debug=True)