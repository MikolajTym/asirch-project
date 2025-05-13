from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def index():
    creator_name = os.environ.get('NAME', 'Nieznany stwórca')
    return f"Moim stwórcą jest {creator_name}"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get('PORT', 5000)))