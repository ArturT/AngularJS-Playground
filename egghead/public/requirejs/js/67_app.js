define(function (require) {
  //var alerter = require('67_alerter');
  //alerter('hello from the app');

  var button = document.createElement('button');
  button.onclick = function (argument) {
    var alerter = require(['67_alerter'], function (alerter) {
      alerter('hello from the app');
    });
  };
  button.textContent = 'Click me to load the alerter';

  document.body.appendChild(button);
});
