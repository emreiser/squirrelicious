// look up a recipe from the data base
//Create function to diplay them
//to create HTML for displaying recipes (2 functions, displayALL & displayOne)

var Squirrelicious = Squirrelicious || {};

// gets the recipe from the database
Squirrelicious.look_up_recipe = function(recipe_id, meat){
  $.ajax({
    url: '/recipes/' + recipe_id,
    type: 'GET',
    dataType: 'json'
  })
  .done(function(data) {
    Squirrelicious.render_recipe_show_info(data, meat);
  });
};

// renders the div for display on the index page
Squirrelicious.render_recipe_show_info = function(recipe, meat) {
  var $content = $('#content'), $recipe_side_bar;
  recipe.ingredients = recipe.ingredientlist.split(":");

  $content.empty();
  $content.append(HandlebarsTemplates["recipe_show"](recipe));
  
  Squirrelicious.render_side_bar(recipe);
  Squirrelicious.squirrelify(meat);
};

Squirrelicious.render_side_bar = function(recipe){
  var $fav_button = $(".favorite-button");

  Squirrelicious.get_favorites(function(data) {
    for(var i = 0, l = data.length; i < l; i++) {
      if (data[i].yummlyid === recipe.yummlyid) {
        $fav_button.removeClass('btn-custom');
        $fav_button.addClass('btn-danger');
        $fav_button.text('Remove favorite');
      }
    }
    $fav_button.click(function(event) {
      event.preventDefault();
      Squirrelicious.add_favorite(recipe);
      Squirrelicious.render_recipe_show_info(recipe);
      return false;
    });
  });
};







