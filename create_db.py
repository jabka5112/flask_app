from flask_app import app, db

with app.app_context():
    upgrade()
    print("Database tables created")


