# -*- coding: utf-8 -*-
import csv
import re
import networkx as nx


def real_parse_smoothie_file(csvfile):
    recipe_list = []
    ingr_list = []
    with open(csvfile, 'rb') as f:
        reader = csv.reader(f)
        reader.next()
        for row in reader:
            ingrs_row = row[9]
            ingrs = []
            for ingr in ingrs_row.split('; '):
                ingr = filter(bool, re.split('qnt:|ingr:|type:', ingr))
                ingrs.append(ingr)
            recipe = {
                'page_url': row[5],
                'name': _to_camelcase([row[6]])[0],
                'description': row[7],
                'num_served': row[8].split(' ')[1],
                'ingredients': ingrs
            }
            recipe_list.append(recipe)
            ingr_list += ingrs
    return recipe_list, set(ingr_list)


def real_build_graph(recipes, ingredients):
    g = nx.DiGraph()
    for qnt, ingr, label in ingredients:
        g.add_node(ingr, {'UniqueId': ingr, 'Label': label, 'Catagory': ''})
    for recipe in recipes:
        g.add_node(recipe['name'], {
            'UniqueId': recipe['name'], 'Label': 'Recipe', 
            'Description': recipe['description'], 'SourceUrl': recipe['page_url'], 
            'Servings': recipe['num_served'],
        })
        ingrs = recipe['ingredients']
        for qnt, ingr, label in ingrs.iteritems():
            g.add_edge(ingr, recipe['name'], {'quantity': qnt})
    return g

def parse_smoothie_file(csvfile):
    recipe_list = []
    ingr_list = []
    with open(csvfile, 'rb') as f:
        reader = csv.reader(f)
        reader.next()
        for row in reader:
            ingrs_content = row[9]
            qnts = re.findall('(\d*\.\d+|\d+)\s(cups?|inch)?', ingrs_content)
            new_qnts = []
            for qnt in qnts:
                if qnt[1]:
                    new_qnts.append(qnt[0] + ' ' + qnt[1])
                else:
                    new_qnts.append(qnt[0])
            ### THIS IS EMBARRASING BUT I HAVE NO TIME
            ingrs = re.split(
                '\d+\.?\d*\sc?u?p?s?i?n?c?h?t?s?p?t?b?s?o?z?', ingrs_content
            )
            ingrs = _to_camelcase(ingrs)
            ingr_list += ingrs
            ingr_tuples = dict(zip(ingrs, new_qnts))
            recipe = {
                'page_url': row[5],
                'name': _to_camelcase([row[6]])[0],
                'description': row[7],
                'num_served': row[8].split(' ')[1],
                'ingredients': ingr_tuples
            }
            recipe_list.append(recipe)
    return recipe_list, set(ingr_list)


def build_graph(recipes, ingredients):
    g = nx.DiGraph()
    for ingr in ingredients:
        g.add_node(ingr, {'UniqueId': ingr, 'Label': '', 'Catagory': ''})
    for recipe in recipes:
        g.add_node(recipe['name'], {
            'UniqueId': recipe['name'], 'Label': 'Recipe', 
            'Description': recipe['description'], 'SourceUrl': recipe['page_url'], 
            'Servings': recipe['num_served'],
        })
        ingrs = recipe['ingredients']
        for ingr, qnt in ingrs.iteritems():
            g.add_edge(ingr, recipe['name'], {'quantity': qnt})
    return g

def graph_to_cypher(g, filename):
    queries = ['//Graph written from NetworkX']
    for node, attrs in g.nodes(data=True):
        label = attrs['Label']
        q = "CREATE (%s:%s {\n" % (node, label)
        counter = 0
        for attr, val in attrs.iteritems():
            if attr != 'Label':
                q += '\t{0}: "{1}"'.format(attr, val)
            if counter < len(attrs) - 2:
                q += ',\n'
            counter += 1
        q += '})' 
        queries.append(q)
    for source, target, attrs in g.edges(data=True):
        q = 'CREATE (%s)-[:IN {' % (source)
        for attr, value in attrs.iteritems():   
            q += '{0}: "{1}"'.format(attr, value)
        q += '}]->(%s)' % (target)
        queries.append(q)
    with open(filename, 'wb') as f:
        f.write('\n\n'.join(queries))

    return queries

def _to_camelcase(ingrs):
    processed = []
    ingrs = filter(bool, ingrs)
    for ingr in ingrs:
        ingr = ingr.strip(' ')
        ingr_list = filter(bool, ingr.split(' '))
        new_ingr = ''
        for word in ingr_list:
            letter_list = list(word)
            letter_list[0] = letter_list[0].upper()
            new_ingr += ''.join(letter_list)
        processed.append(new_ingr)
    return processed
