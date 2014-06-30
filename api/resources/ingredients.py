from flask.ext import restful
from flask.ext.restful import reqparse  # , fields, marshal_with
from common.queries import IngredientRecommender


parser = reqparse.RequestParser()
parser.add_argument('ingr', type=str, action='append')


class IngredientEndpoint(restful.Resource):

    def get(self):
        args = parser.parse_args()
        ingrs = args['ingr']
        recommender = IngredientRecommender(ingrs)
        return recommender.execute_query()
