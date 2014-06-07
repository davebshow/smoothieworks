import csv
import re
import networkx as nx


def parse_smoothie_file(csvfile):
    """Parse unruly smoothie data file from mygreensmoothie.com
       scraped with import.io (We bought the PDF too for $7)"""
    recipe_list = []
    ingr_dict = {}
    with open(csvfile, 'r') as f:
        reader = csv.reader(f)
        next(reader)
        for row in reader:
            ingrs_row = row[9]
            ingrs = [] 
            for ingr in ingrs_row.split('; '):
                ingr = list(filter(bool, re.split('qnt:|ingr:|type:', ingr)))
                strp_qnt = ingr[0].strip()
                strp_ingr = ingr[1].strip()
                strp_type = ingr[2].strip()
                ingr_dict.setdefault(strp_ingr, (strp_qnt, strp_ingr, strp_type))
                ingrs.append((strp_qnt, strp_ingr, strp_type))
            recipe = {
                'page_url': row[5],
                'name': _to_camelcase(row[6]),
                'description': row[7],
                'num_served': row[8].split(' ')[1],
                'ingredients': ingrs
            }
            recipe_list.append(recipe)
    return recipe_list, ingr_dict.values()


def build_graph(recipes, ingredients):
    """Build a NetworkX graph with smoothie data
       using Cypher style node formatting: UniqueName:Label"""
    g = nx.DiGraph()
    for qnt, ingr, label in ingredients:
        cypher_node = '{0}:{1}'.format(ingr, label)
        g.add_node(cypher_node, {'UniqueId': ingr})
    for recipe in recipes:
        cypher_node = '{0}:{1}'.format(recipe['name'], 'Recipe')
        g.add_node(cypher_node, {
            'UniqueId': recipe['name'], 
            'Description': recipe['description'], 
            'SourceUrl': recipe['page_url'],
            'Servings': recipe['num_served'],
        })
        ingrs = recipe['ingredients']
        for qnt, ingr, label in ingrs:
            cypher_ingr = '{0}:{1}'.format(ingr, label)
            g.add_edge(cypher_ingr, cypher_node, {'quantity': qnt})
    return g


def graph_to_csv(g, ingrfile, rcpfile, edgefile):
    """TODO: Write to csv for storage of base/training data"""
    recipes = []
    for node, attrs in g.nodes(data=True):
        row = OrderedDict(attrs)
    pass


def graph_to_cypher(g, filename, merge=False):
    """Write NetworkX graph to properly formatted Cypher.
       Nodes should have Cypher style format: UniqueName:Label"""
    queries = ['//Graph written from NetworkX']
    for node, attrs in g.nodes(data=True):
        query = "CREATE (%s {\n" % (node)
        counter = 0
        for attr, val in attrs.items():
            query += '\t{0}: "{1}"'.format(attr, val)
            if counter < len(attrs) - 1:
                query += ',\n'
            counter += 1
        query += '})' 
        queries.append(query)
    for source, target, attrs in g.edges(data=True):
        source = source.split(':')[0]
        target = target.split(':')[0]
        if merge:
            query = 'MERGE (%s)-[:IN {' % (source)
        else:
            query = 'CREATE (%s)-[:IN {' % (source)
        for attr, value in attrs.items():   
            query += '{0}: "{1}"'.format(attr, value)
        query += '}]->(%s)' % (target)
        queries.append(query)
    with open(filename, 'w') as f:
        f.write('\n\n'.join(queries))


def _to_camelcase(name):
    """Helper function that formats multi-word strings
       as CamelCase """
    tokens = filter(bool, name.strip().split(' '))
    camel_name = '' 
    for token in tokens:
        token = re.sub('-', '', token)
        letters = list(token)
        letters[0] = letters[0].upper()
        camel_name += ''.join(letters)
    return camel_name
