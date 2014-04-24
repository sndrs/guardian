var $ = require('jquery');

var Tabs = require('./tabs');

// FTLabs fastclick library - removes any native delay on touch interfaces
var attachFastClick = require('fastclick');
attachFastClick(document.body);

$(function(){
  var tabs = new Tabs();
});
