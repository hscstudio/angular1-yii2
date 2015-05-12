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


---

> *** Done ***<br>
> [Back To Index](index.md) <br>
> [01. Introduction](01-introduction.md) <br> 
> [02. Preparation](02-preparation.md) <br>
> [03. Create Web Service](03-create-web-service.md) <br>
> [04. Create Web Client](04-create-web-client.md) <br>
> [05. Customization](05-customization.md) <br>
> [06. Conclusion](06-conclusion.md) <br>
