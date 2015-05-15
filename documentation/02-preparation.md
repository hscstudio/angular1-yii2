# Preparations

It's time to start preparing applications. The following are separate steps for client and service applications.

## Web Client Application

Create a web root directory (usually it's `web`, `htdocs`, `public_html`, `www` or alike name). Inside add directories
named `assets`, `controllers`, `models` and `views`.

The structure we've just created is similar to the structure used by Yii. You can adjust it as you like but for this
tutorial we'll stick to Yii convention in order to make it easier to understand.

Let's explain all these directories a bit:

- `assets` contains AngularJs and CSS Bootstrap libraries. 
- `controllers` is for AngularJs controllers.
- `models` is for services which deal with RESTful CRUD API we're going to build.
- `views` is for partial pages. Much like views in Yii.

### Get CSS Bootstrap

Download a library from [http://getbootstrap.com/](http://getbootstrap.com/) and extract it to `assets` directory like the following:

```
assets
    bootstrap
        js
        css
        font
```

### Get AngularJs

Download a library from [http://angularjs.org/](http://angularjs.org/), and extract it into `assets` directory like the following:

```
assets
    bootstrap
    angular
        angular.js
        angular.min.js
        ...
```

### Include AngularJs and CSS Bootstrap into HTML

In order to use AngularJs and CSS Bootstrap we need to create an HTML file html file which will use both libraries.
Create `index.html` and put it into your web root directory:

```html
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
  
</body>

</html>
```

## Web Service Application

Install Yii 2.0 Basic project template as [described in Yii guide](http://www.yiiframework.com/doc-2.0/guide-start-installation.html).
It is preferred to use Composer like the following:

```
composer global require "fxp/composer-asset-plugin:1.0.0"
composer create-project --prefer-dist yiisoft/yii2-app-basic web-service
```

Alternatively you can do it manually downloading and extracting archive as described at the same guide page.

---

> [Back To Index](index.md) <br>
> [01. Introduction](01-introduction.md) <br> 
> [02. Preparation](02-preparation.md) <br>
> [03. Create Web Service](03-create-web-service.md) <br>
> [04. Create Web Client](04-create-web-client.md) <br>
> [05. Customization](05-customization.md) <br>
> [06. Conclusion](06-conclusion.md) <br>
