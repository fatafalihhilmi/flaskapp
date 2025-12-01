from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Halo! Aplikasi Flask berhasil dijalankan."

if __name__ == "__main__":
    app.run()
