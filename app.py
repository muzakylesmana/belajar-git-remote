from flask import Flask, flash
app = Flask(__name__)

@app.route('/')
def home():
    flash('Hello, World!')
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(debug=True)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)