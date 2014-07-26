import json
from neo4j.contextmanager import Neo4jDBConnectionManager


manager = Neo4jDBConnectionManager('http://localhost:7474')


class IngredientRecommender(object):

    INGR_MATCH = 'MATCH ({0} {{UniqueId: "{0}"}})-->(recipe)'
    MATCH_PTRN = ', ({0} {{UniqueId: "{0}"}})-->(recipe)'
    RCP_MATCH = 'MATCH (ingredient)-->(recipe)'
    WHERE = 'WHERE NOT ingredient.UniqueId IN {0}'
    RETURN = ('RETURN ingredient.UniqueId AS Ingredient, '
              'labels(ingredient)[0] AS Type, '
              'count(*) AS NumOccurances ')
    ORDER_BY = 'ORDER BY count(*) DESC'

    def __init__(self, ingrs):
        self.ingrs = ingrs
        self.num_ingrs = len(self.ingrs)
        self.query = self.build_query()
        self.results = []

    def build_query(self):
        match = self.INGR_MATCH.format(self.ingrs[0])
        if len(self.ingrs) > 1:
            for ingr in self.ingrs[1:]:
                match += self.MATCH_PTRN.format(ingr)
        self.query = '{0} {1} {2} {3} {4}'.format(
            match,
            self.RCP_MATCH,
            self.WHERE.format(json.dumps(self.ingrs)),
            self.RETURN,
            self.ORDER_BY
        )
        return self.query

    def execute_query(self):
        with manager.read as reader:
            for ingr in reader.execute(self.query):
                self.results.append(ingr)
        return self.results
