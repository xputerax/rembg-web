from flask import Flask, render_template, request
import rembg
import os

try:
    debug = os.environ['DEBUG']
except KeyError:
    debug = False

try:
    port = os.environ['PORT']
except KeyError:
    port = 8080

app = Flask(__name__)

print(f"{__name__}")
print(f"port: {port}")
print(f"debug: {debug}")

@app.route("/", methods=['GET'])
def index():
    return render_template('index.html')

@app.route("/submit", methods=['POST'])
def submit():
    try:
        image = request.files['image']
        return rembg.remove(image.stream.read(),), {
            "Content-Type": "image/png"
        }
    except KeyError:
        return "please select an image"

if __name__ == '__main__':
    app.run(debug=debug, port=port)