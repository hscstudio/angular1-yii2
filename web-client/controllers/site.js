'use strict';
spaApp_site.config(['$routeProvider', function($routeProvider) {
  $routeProvider
	.when('/site/index', {
		templateUrl: 'views/site/index.html',
		controller: 'index'
	})
	.when('/site/about', {
		templateUrl: 'views/site/about.html',
		controller: 'about'
	})
	.when('/site/contact', {
		templateUrl: 'views/site/contact.html',
		controller: 'contact'
	})
	.otherwise({
		redirectTo: '/site/index'
	});
}])
.controller('index', ['$scope', '$http', function($scope,$http) {
	// create a message to display in our view
	$scope.message = 'Everyone come and see how good I look!';
}])
.controller('about', ['$scope', '$http', function($scope,$http) {
	// create a message to display in our view
	$scope.message = 'Look! I am an about page.';
}])
.controller('contact', ['$scope', '$http', function($scope,$http) {
	// create a message to display in our view
	$scope.message = 'Contact us! JK. This is just a demo.';
}]);