var Squirrelicious = Squirrelicious || {};

Squirrelicious.get_favorites = function(callback){
  $.ajax({
    url: '/recipes',
    type: 'GET',
    dataType: 'json'
  })
  .done(function(data) {
    callback(data);
  });
};

Squirrelicious.add_favorite = function(recipe) {
  var id_number;
  if (typeof recipe.id === 'number') {
    id_number = recipe.id;
  } else {
    id_number = null;
  }
  $.ajax({
    url: '/recipes/' + recipe.id,
    type: 'POST',
    dataType: 'json',
    data: { number: id_number }
  })
  .done(function(data) {
    if (data.redirect_to) {
      $('body').data('favorite', true);
      window.location.pathname = data.redirect_to;
    }
  });
};

