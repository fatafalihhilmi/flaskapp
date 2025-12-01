from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from CI/CD!"

if __name__ == "__main__":
    # HOST='0.0.0.0' agar Flask dapat diakses dari luar Container
    app.run(host='0.0.0.0', port=5000)
