var Squirrelicious = Squirrelicious || {};

Squirrelicious.cravings = ["Connection", "Kebabs", "Community"];

Squirrelicious.typeCravings = function(){
  $("#craving").typed({
    strings: Squirrelicious.cravings,
    startDelay: 1500,
    typeSpeed: 80,
    backspeed: 200,
    loopCount: 2,
    backDelay: 1000
  });
};