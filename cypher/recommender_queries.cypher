// Find ingredients that are most frequently combined with strawberry. 

MATCH    (strawberry {UniqueId: "Strawberry"})-->(recipe)
MATCH    (ingredient)-->(recipe) 
WHERE    NOT ingredient.UniqueId IN ["Strawberry"]
RETURN   ingredient.UniqueId AS Ingredient,
         labels(ingredient)[0] AS Type,
         count(*) AS NumOccurances 
ORDER BY count(*) DESC


// Or with blueberry and water.

MATCH     (blueberry {UniqueId: "Blueberry"})-->(recipe),
          (water {UniqueId: "Water"})-->(recipe)
MATCH     (ingredient)-->(recipe) 
WHERE NOT ingredient.UniqueId IN ["Blueberry", "Water"]
RETURN    ingredient.UniqueId AS Ingredient, 
          labels(ingredient)[0] AS Type,
          count(*) AS NumOccurances 
ORDER BY  count(*) DESC


// Jaccard similarity coefficient query

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