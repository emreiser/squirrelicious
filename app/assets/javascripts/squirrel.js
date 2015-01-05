var Squirrelicious = Squirrelicious || {};

Squirrelicious.allMeats = ["Pork", "Tofu", "Salmon", "Steak", "Beef", "Chicken"];

Squirrelicious.squirrelify = function(meat){
  var meat = meat || Squirrelicious.allMeats.join('|');
  var reg = new RegExp(meat, "ig");

  Array.prototype.slice.call($(".recipe-title, p.link a")).forEach(function(title){
    var newTitle = (title.textContent).replace(reg, 'Squirrel');
    $(title).text(newTitle);
  });

  Array.prototype.slice.call($("p.lead")).forEach(function(title){
    var newTitle = (title.textContent).replace(reg, 'squirrel');
    $(title).text(newTitle);
  });
}