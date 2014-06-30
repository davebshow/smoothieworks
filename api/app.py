from flask import Flask
from flask.ext import restful

from resources.ingrds import IngredientEndpoint


app = Flask(__name__)
api = restful.Api(app)


api.add_resource(IngredientEndpoint, '/ingredients')


if __name__ == '__main__':
    app.run(debug=True)
