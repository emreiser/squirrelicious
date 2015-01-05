var Squirrelicious = Squirrelicious || {};

Squirrelicious.addRecipe = function(recipe, callback) {
	$.ajax({
		url: '/recipes',
		type: 'POST',
		dataType: 'json',
		data: {recipe: {title: recipe.recipeName, imageurl: recipe.smallImageUrls[0], ingredientlist: recipe.ingredients.join(':'), yummlyid: recipe.id}},
	})
	.done(function(data) {
		callback(data);
	});
};
