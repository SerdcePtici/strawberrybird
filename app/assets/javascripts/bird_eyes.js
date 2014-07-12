function randomInt(min, max) {
  return min + ((max-min+1)*Math.random()^0);
}

(function() {
  $(function() {
    var wink = function(){
      $('#eyes').hide();
      setTimeout(function(){
        $("#eyes").show();
        setTimeout(wink, 130);
      }, randomInt(0, 2000));
    }
    wink();
  })
}).call(this);