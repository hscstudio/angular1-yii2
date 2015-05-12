## Create Web Client

In this section we will create a web client , or the user interface of the web application service that has been created in the previous section . The technology that we will use is AngularJs as javascript frameworknya which is responsible for controlling web - client applications and the bootstrap is responsible for the look of the application.

### Setup Entry Script Application
Entry script is a script that was first accessed by our client web application , the [index.html](../web-client/index.html) file contained in the folder web - client.
#### Define Angular App
Attaching ng-app attribute to html tag. for example "spaApp"
```html
<!DOCTYPE html>
<!-- define angular app -->
<html ng-app="spaApp">
<head>
  <!-- CSS -->
```
#### Define Default Angular Controller
```html
Attaching ng-controller attribute to body tag. for example "index" controller
</head>
<!-- define angular controller -->
<body ng-controller="index">
```
#### Create Main Menu of Application 
Add this content inside body tag, its are Navbar for menu, main for page container, and footer
```html
<body ng-controller="index">
  <nav class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="#/">Single Page Application</a>
      </div>	  
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#/"><i class="glyphicon glyphicon-home"></i> Home</a></li>
        <li><a href="#/site/about"><i class="glyphicon glyphicon-tag"></i> About</a></li>
        <li><a href="#/site/contact"><i class="glyphicon glyphicon-envelope"></i> Contact</a></li>
      </ul>
    </div>
  </nav>
  <div id="main" class="container"> 
    <!-- angular templating -->
		<!-- this is where content will be injected -->
    <div ng-view></div>    
  </div>
  
  <footer class="text-center">
    <p>Yii 2.0.3 + AngularJs 1.3.15</p>
  </footer> 
```
Important thing of this code is in div tag id container.. 
```html
<div id="main" class="container"> 
  <!-- angular templating -->
	<!-- this is where content will be injected -->
  <div ng-view></div>    
</div>
```
<div ng-view></div>, in this div will placed the dynamic content from other file or page view.

### Create Main Script
The main script is intended to controll other javascript script. We named him with [app.js](../web-client/app.js) and placed in the root of the web - client
```js
'use strict';
// adjust to the Your url of web service
var serviceBase = 'http://127.0.0.1/web-service/web/'
// Declare app level module which depends on views, and components
var spaApp = angular.module('spaApp', [
  'ngRoute',
  'spaApp.site',
]);
// sub module declaration
var spaApp_site = angular.module('spaApp.site', ['ngRoute'])

spaApp.config(['$routeProvider', function($routeProvider) {
  // config default route
  $routeProvider.otherwise({redirectTo: '/site/index'});
}]);
```
Default route is /site/index, this route will handled by sub module "spaApp.site"

3.	Create file site.js in folder controller
This file is controller to handle site views, maybe in Yii is like as SiteController.php
This file handle routing of angular app for sub module site. Every route have  may templateUrl and controller.
TemplateUrl is other file html as partial content
Controller is name of controller that do some process, for example set variable in template. 
$scope.message, message is variabel in file templateUrl, let say views/site/index.html, point to {{message}}
 
If You Yiiers, Sub module in angular maybe is like as Controller in Yii, and .controller in angular is like as function of controllers in Yii.
4.	Include app.js in index.html
 
Okey, after it then create views
5.	Create views/site/index.html, views/site/contact.html, views/site/about.html
This is only example
 
 
 
6.	Testing Your Angular App
 
7.	Modify app.js
Add js global varabel serviceBase that refer to Your Yii 2 web service, then add sub module spaApp.book
 
8.	Create file book.js in folder models
book.js will handle CRUD data from Rest Yii 2. I force You understand it as models in Yii 2 
 
 
To understand it, so simple.. focus to function of objects: obj,getBooks, obj.createBook, etc. And in every function, there are process to shoot to Rest Yii.. for example 
obj.getBooks = function(){
        return $http.get(serviceBase + 'books');
    }
For get list of the book use method GET, see in https://github.com/yiisoft/yii2/blob/master/docs/guide/rest-quick-start.md,
obj.createBook = function (book) {
		return $http.post( serviceBase + 'books', book )
create book use method POST
obj.updateBook = function (book) {
	    return $http.put(serviceBase + 'books/' + book.id, book )
update book use PUT method..
Okey, sos simple, You understand?
9.	Create file book.js in folder controller
This file is controller to handle book views, maybe in Yii is like as BookController.php
 

 
10.	Create index.html in folder views/book/
 
 
11.	Create create.html in folder views/book/
 
 
12.	Create update.html in folder views/book/
 
 
13.	Testing now
 
 

---

> *** Done ***<br>
> [Back To Index](index.md) <br>
> [01. Introduction](01-introduction.md) <br> 
> [02. Preparation](02-preparation.md) <br>
> [03. Create Web Service](03-create-web-service.md) <br>
> [04. Create Web Client](04-create-web-client.md) <br>
> [05. Customization](05-customization.md) <br>
> [06. Conclusion](06-conclusion.md) <br>
