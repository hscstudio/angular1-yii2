## Prepare Your Weapons

### For Web Client
create a folder on the web - client web - accessible folder ( eg htdocs , public_html , www , etc. ) and then inside the folder again make four sub folder namely assets , controllers , models, views

This folder structure is a folder structure of our client web application. Why is structurally similar to the structure of Yii ? yes , I deliberately made ​​it resemble Yii where you can easily understand it . Interesting isn't it ?

Well , I will explain the function of each folder:
-	Assets folder for core angularJs and TwitterBootstrap, 
-	Controllers folder for javascript controller of angularJs
-	Models folders for services, connecting to Restful CRUD URL Yii 2.0
-	Views folder for partial page, is like views in Yii :)

You love with this arrangement ?

#### Download Twitter Bootstrap
Download this library from http://getbootstrap.com/, and extract to folder assets

so that the assets contained in the folder twitter-bootstrap folder inside the folder and then there are three folders twitter bootstrap again that js , css and fonts
+ assets
+ + twitter-bootstrap
+ + + js
+ + + css
+ + + font

#### Download AngularJs
Download this library from http://angularjs.org/, and extract to folder assets

so that the assets contained in the folder angular and all the material from the angular library is placed in this folder
+ assets
+ + twitter-bootstrap
+ + angular
+ + + angular.js
+ + + angular.min.js
+ + + ...
+ + + etc

#### Connecting AngularJs & Twitter Bootstrap with HTML
In order to use angularjs and twitter bootstrap, so we need to create an html file html file which will menginclude file of the two libraries. Put this file (index.html) in the root of the web-client folder

```
<!DOCTYPE html>
<html>
<head>
  <!-- CSS -->
  <link rel="stylesheet" href="assets/twitter-bootstrap/css/bootstrap.min.css" />
  <link rel="stylesheet" href="assets/twitter-bootstrap/css/bootstrap-theme.min.css" />
</head>
<body>
  
  <!-- JS -->
  <script src="assets/angular/angular.min.js"></script>
  <script src="assets/angular/angular-route.min.js"></script>
  <script src="assets/angular/angular-animate.min.js"></script>
  
</body>

</html>
```

While this is quite so first. Furthermore, we will arrange for angular and twitter bootstrap function on this document

### For Web Service

Install Yii 2.0 Basic https://github.com/yiisoft/yii2-app-basic
```
composer global require "fxp/composer-asset-plugin:1.0.0"
composer create-project --prefer-dist yiisoft/yii2-app-basic web-service
```
Prefered way using composer, but You can install manual checkout in http://yiiframework.com

*** Done ***<br>
[Back To Index](index.md) <br>
[01. Introduction](01-introduction.md) <br> 
[02. Preparation](02-preparation.md) <br>
[03. Create Web Service](03-create-web-service.md) <br>
[04. Create Web Client](04-create-web-client.md) <br>
[05. Security](05-security.md) <br>
[06. Conclusion](06-conclusion.md) <br>
[03. Create Web Service](03-create-web-service.md) <br>
