from flask import render_template
from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello_world():
    app.logger.debug('test logger')
    return render_template('index.html', name='test')


if __name__ == '__main__':
    app.debug = True
    app.config.from_object('config')
    app.run()
