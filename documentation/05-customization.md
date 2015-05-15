# Customization

This page still editing. You're very welcome to contribute.

## Miscellaneous
For installation `assets` (javascript and css), we can use [bower](http://bower.io). Bower is a package manager for the web. It's quite with composer in PHP.

> You should drop all folders and files inside assets folder before using bower, because bower will download libraries for You by special structure.

### Installation
Before installation bower, we must install:
- [nodeJs & npm](http://nodejs.org) 
Node.js is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. NPM is package manager for javascript 
- [Git](http://git-scm.com/)
a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

#### Installation Bower
Bower is a command line utility. Install it with npm.
```
npm install -g bower
```

### Usage
Create file [bower.json](../web-client2/bower.json) in folder web-client
```json
{
  "name": "Angular1-Yii2",
  "version": "1.0.0",
  "homepage": "https://github.com/hscstudio/angular1-yii2",
  "description": "AngularJS 1.3 and Yii Framework 2.0",
  "dependencies": {
    "angular": "~1.3.0",
    "bootstrap": "~3.1.1",
    "angular-route": "~1.3.0"
  }
}
```
And then create file [.bowerrc](../web-client2/.bowerrc), this file contains configuration of bower, add parameter directory to specify target folder installation.
```
{
  "directory": "assets"
}
```
In command line, do this
```
cd web-client2
bower install
```
After installation finished, You can see folder assets have contained library angular, bootstrap, etc.

### Include in Index
Because structure folder that downloaded by bower is different, we should adjust links js and css in file [index.html](web-client2/index.html).
```html
  <!-- CSS -->
  <link rel="stylesheet" href="assets/bootstrap/dist/css/bootstrap.min.css" />
  <link rel="stylesheet" href="assets/bootstrap/dist/css/bootstrap-theme.min.css" />
```
  
```html
  <!-- JS -->
  <script src="assets/angular/angular.min.js"></script>
  <script src="assets/angular-route/angular-route.min.js"></script>
```

## Enhance User Interface

### Angular Animation
There are several types of animation techniques that we can apply in our angularjs application. But in this tutorial I will discuss about the animation at the turn of the page. To do that, we need the ngAnimate module to enable animations throughout the application.

Add module angular-animate in bower.json
```
{
  ...
  ...
  "dependencies": {
    ...
	...
    "angular-animate": "~1.3.0"
  }
}
```
And then do 
```
bower update
```

Create [style.css](../web-client2/style.css) for define animation, for example:
```css
.animate.ng-leave      {

}
.animate.ng-enter 		{  
	-webkit-animation:scaleUp 0.5s both ease-in;
	-moz-animation:scaleUp 0.5s both ease-in;
	animation:scaleUp 0.5s both ease-in;  
}

/* scale up */
@keyframes scaleUp {
	from 		{ opacity: 0.3; transform: scale(0.8); }
}
@-moz-keyframes scaleUp {
	from 		{ opacity: 0.3; -moz-transform: scale(0.8); }
}
@-webkit-keyframes scaleUp {
	from 		{ opacity: 0.3; -webkit-transform: scale(0.8); }
}
```
- ng-enter : will attach when entering view
- ng-leave : when attach when leaving view

Include css animation in [index.html](../web-client2/index.html):
```html
<link rel="stylesheet" href="style.css" />
```
Add class animate in ng-view
```html
<div id="main" class="container"> 
	<!-- angular templating -->
	<!-- this is where content will be injected -->
	<div ng-view class="animate"></div>
</div>
```
Include module ngAnimate in [app.js](../web-client2/app.js):
```js
var spaApp = angular.module('spaApp', [
  'ngRoute',
  'spaApp.site',
  'spaApp.book',
  'ngAnimate' // add module ngAnimate
]);
```


For further informations, read this:
- https://docs.angularjs.org/tutorial/step_12<br>
- https://docs.angularjs.org/guide/animations<br>
- https://docs.angularjs.org/api/ngAnimate<br>

### Flash Message

### Angular Lazy Loader
https://oclazyload.readme.io/v1.0/docs/getting-started

When we add some module, we must add include script for sub module in main. By use module ocLazyLoad we can make lazy load in angular, include only when needed.

- Download ocLazyLoad.js (you can install it with bower install oclazyload or npm install oclazyload) and add the file to your project.
- Add the module oc.lazyLoad to your application:
```js
var spaApp = angular.module('spaApp', [
  'ngRoute',
  'ngAnimate',
  'spaApp.site',
  'spaApp.book',
  'oc.lazyLoad', // add this module lazyLoader
]);
```
- Load on demand:
```js
spaApp.controller("MyCtrl", function($ocLazyLoad) {
  $ocLazyLoad.load('testModule.js');
});
```
With $ocLazyLoad you can load angular modules, but if you want to load any component (controllers / services / filters / ...) without defining a new module it's entirely possible (just make sure that you define this component within an existing module).

There are multiple ways to use $ocLazyLoad to load your files, just choose the one that you prefer.

Also don't forget that if you want to get started and the docs are not enough, see the examples in the 'examples' folder!

## Customize RESTful API

### Versioning

### Customize URL

### Error Handling

## Authorization

## Handling File Upload

## Deploying Application
Before we deploy our application, we need do some things.

### Web Client
Read official guide for application production [click here](https://docs.angularjs.org/guide/production).
#### Disabling Debug Data
By default AngularJS attaches information about binding and scopes to DOM nodes, and adds CSS classes to data-bound elements, but we can disable this in production for a significant performance boost with:
```js
spaApp.config(['$compileProvider', function ($compileProvider) {
  $compileProvider.debugInfoEnabled(false);
}]);
```
#### Strict DI Mode
Using strict di mode in your production application will throw errors when a injectable function is not annotated explicitly. Strict di mode is intended to help you make sure that your code will work when minified. However, it also will force you to make sure that your injectable functions are explicitly annotated which will improve angular's performance when injecting dependencies in your injectable functions because it doesn't have to dynamically discover a function's dependencies. It is recommended to automate the explicit annotation via a tool like ng-annotate when you deploy to production (and enable strict di mode)

To enable strict di mode, you have two options:
```html
<div ng-app="spaApp" ng-strict-di>
  <!-- your app here -->
</div>
```
or
```js
angular.bootstrap(document, ['spaApp'], {
  strictDi: true
});
```

#### 
### Web Service
Same with AngularJs, in production environments, we should disable debug mode. It may have a significant and adverse performance effect, besides that the debug mode may expose sensitive information to end users.

Modify file [web/index.php](../web-service/web/index.php) in web-service, set `Yii_DEBUG` const to be `false`, and then `YII_ENV` to be `prod`.
```php
defined('YII_DEBUG') or define('YII_DEBUG', false);
defined('YII_ENV') or define('YII_ENV', 'prod');
```

---

> [Back To Index](index.md) <br>
> [01. Introduction](01-introduction.md) <br> 
> [02. Preparation](02-preparation.md) <br>
> [03. Create Web Service](03-create-web-service.md) <br>
> [04. Create Web Client](04-create-web-client.md) <br>
> [05. Customization](05-customization.md) <br>
> [06. Conclusion](06-conclusion.md) <br>
