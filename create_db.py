from flask_app import app, db

with app.app_context():
    print("Database tables created")
    db.create_all()
    


