var Squirrelicious = Squirrelicious || {};

Squirrelicious.addRecipe = function(recipe, callback) {

	$.ajax({
		url: '/recipes',
		type: 'POST',
		dataType: 'json',
		data: {recipe: {title: recipe.label, imageurl: recipe.image, ingredientlist: recipe.ingredientLines.join(':'), yummlyid: recipe.id, url: recipe.url}},
	})
	.done(function(data) {
		callback(data);
	});
};
