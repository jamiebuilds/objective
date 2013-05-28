var topid;

var App = angular.module('docs', [], function ($compileProvider) {
  $compileProvider.urlSanitizationWhitelist(/^\s*(https?|ftp|mailto|file):/);
});

App.controller('DocsCtrl', function($scope, $http) {
  $scope.navitems = [];

  $scope.converter = new Showdown.converter();
  $scope.container = document.getElementById('markdown');

  $scope.convert = function() {
    var container = angular.element($scope.container), headings, heading;

    for (var i = 0; i <= 6; i++) {
      container.find('h' + i).addClass('heading');
    }

    var headings = $scope.container.getElementsByClassName('heading'), heading, link;

    for (var i = 0; i < headings.length; i++) {
      heading = headings.item(i);

      link = document.createElement('a');
      link.href = '#' + heading.id;

      if (i === 0) {
        topid = heading.id;
      }

      $scope.navitems[i] = {
        tag: heading.tagName.toLowerCase(),
        id: heading.id,
        text: heading.innerText || heading.textContent
      };

      link.innerHTML = heading.innerHTML;
      heading.innerHTML = '';
      heading.appendChild(link);
    }

    var pre = $scope.container.getElementsByTagName('pre');

    for (var i = 0; i < pre.length; i++) {
      var el = pre.item(i),
          child = el.getElementsByTagName('code'),
          classname = 'lang-' + child.item(0).className;

      el.className = classname + ' prettyprint linenums';
    }

    prettyPrint();
  };

  $http.get('README.md').success(function(data, status, headers, config) {
    $scope.container.innerHTML = $scope.converter.makeHtml(data);
    var hash = window.location.hash;
    if (hash !== "") {
      window.location.replace(('' + window.location).split('#')[0] + hash);
    }
    $scope.convert();
    document.body.style.opacity = '';
  });
});

window.onhashchange = function() {
  if (window.location.hash === '#' + topid) {
    window.location.replace(('' + window.location).split('#')[0] + '#');
  }
};
