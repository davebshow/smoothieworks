// Find ingredients that are most frequently combined with strawberry. 

MATCH     (strawberry {UniqueId: "Strawberry"})-->(recipe)
MATCH     (ingredient)-->(recipe) 
WHERE NOT ingredient.UniqueId IN ["Strawberry"]
RETURN    ingredient.UniqueId AS Ingredient,
          labels(ingredient)[0] AS Type,
          count(*) AS NumOccurances 
ORDER BY  count(*) DESC


// Or with blueberry and water.

MATCH     (blueberry {UniqueId: "Blueberry"})-->(recipe),
          (water {UniqueId: "Water"})-->(recipe)
MATCH     (ingredient)-->(recipe) 
WHERE NOT ingredient.UniqueId IN ["Blueberry", "Water"]
RETURN    ingredient.UniqueId AS Ingredient, 
          labels(ingredient)[0] AS Type,
          count(*) AS NumOccurances 
ORDER BY  count(*) DESC


// Jaccard similarity coefficient queries
// I wrote the first query while learning cypher. In a db where all recipes share at least one
// ingredient I think the first one will be faster.

MATCH     (sourceIngredients)-->(sourceRecipe {UniqueId: "PineappleKaleCoconutOilGreenSmoothie"})
WITH      sourceRecipe, 
          collect(DISTINCT sourceIngredients) AS sourceIngr
MATCH     (targetIngr)-->(targetRecipes)
WHERE NOT targetRecipes = sourceRecipe
WITH      targetRecipes, 
          collect(DISTINCT targetIngr) AS targets,
          sourceIngr AS sources 
WITH      targetRecipes,
          filter(x in targets WHERE x in sources) AS intersect, 
          filter(x in targets WHERE not x in sources) + sources AS union
RETURN    targetRecipes.UniqueId AS Recipe, 
          extract(ingr in intersect | ingr.UniqueId) AS Intersect, 
          extract(ingr in union | ingr.UniqueId)  AS Union,
          length(intersect) * 1.0 / length(union) AS SimilarityCOF
ORDER BY  SimilarityCOF DESC

// William Lyon style. 
// http://gist.neo4j.org/?49a2b9874b37b4a2da4a#_find_most_similar_users_using_jaccard_index
// This should be better if there are a lot of recipes that don't share an ingredient.

MATCH     (sourceRecipe {UniqueId: "PineappleKaleCoconutOilGreenSmoothie"}), (r2:Recipe) 
WHERE     sourceRecipe <> r2 
MATCH     (sourceRecipe)<--(intersection)-->(r2) 
WITH      sourceRecipe, r2, count(intersection) as intersect 
MATCH     (sourceRecipe)<--(ingr1) 
WITH      sourceRecipe, r2, intersect, collect(DISTINCT ingr1) AS coll1 
MATCH     (r2)<--(ingr2) 
WITH      sourceRecipe, r2, collect(DISTINCT ingr2) AS coll2, coll1, intersect 
WITH      sourceRecipe, r2, intersect, length(coll1 + filter(x IN coll2 WHERE NOT x IN coll1)) as union 
RETURN    r2.UniqueId as Recipe,
          intersect * 1.0 / union AS SimilarityCOF
ORDER BY  SimilarityCOF DESC


// Recommend some combinations based on user input: Pineapple and Spinach. This sort of filtering would be done in the client, but to give an idea, we'll do something here 
// where we only recommend on base, booster, and green.

MATCH    (blueberry {UniqueId: "Blueberry"})-->(recipe),
         (water {UniqueId: "Water"})-->(recipe)
WITH     blueberry,
         water,
         [labels(blueberry)[0], labels(water)[0]] AS baseTypes,
         collect(DISTINCT recipe) AS recipes
WITH     recipes,
         filter(type in baseTypes WHERE NOT type in ["Fruit", "Herb", "Root"]) AS filter
MATCH    (ingredient)-->(recipe) 
WHERE    recipe IN recipes 
AND NOT  ingredient.UniqueId IN ["Blueberry", "Water"]
AND NOT  labels(ingredient)[0] IN filter 
RETURN   ingredient.UniqueId AS Ingredient, 
         labels(ingredient)[0] AS Type,
         count(*) AS NumOccurances 
ORDER BY Type, count(*) DESC